import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_state.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';

class PhotosRoute extends StatefulWidget {
  final PhotosRepository photosRepository;

  const PhotosRoute({Key key, @required this.photosRepository})
      : assert(photosRepository != null),
        super(key: key);

  @override
  _PhotosRouteState createState() => _PhotosRouteState();
}

class _PhotosRouteState extends State<PhotosRoute> {
  PhotosBloc _photosBloc;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _photosBloc = PhotosBloc(widget.photosRepository);
    _photosBloc.dispatch(PhotosFetchEvent());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _photosBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _photosBloc,
      builder: (context, currentState) {
        if (currentState is PhotosEmptyState) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (currentState is PhotosLoadedState) {
          final photos = currentState.photos;
          if (photos.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('No more photos to show!'),
              ),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              if (index >= photos.length) {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final currentPhoto = photos[index];
              return TransitionToImage(
                image: AdvancedNetworkImage(
                  currentPhoto.urls.regular,
                  useDiskCache: true,
                ),
                loadingWidget: FittedBox(
                  child: Container(
                    color: _convertHexToColor(currentPhoto.color),
                    width: currentPhoto.width.toDouble(),
                    height: currentPhoto.height.toDouble(),
                  ),
                  fit: BoxFit.cover,
                ),
                fit: BoxFit.cover,
              );
            },
            itemCount: photos.length + 1,
            controller: _scrollController,
          );
        }
      },
    );
  }

  void _onScroll() {
    final currentScrollPosition = _scrollController.position.pixels;
    final maxScrollPosition = _scrollController.position.maxScrollExtent;
    if (currentScrollPosition == maxScrollPosition) {
      _photosBloc.dispatch(PhotosFetchEvent());
    }
  }

  Color _convertHexToColor(String hexCode) {
    return Color(int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
