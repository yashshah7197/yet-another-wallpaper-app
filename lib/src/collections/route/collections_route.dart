import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_event.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_state.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';

class CollectionsRoute extends StatefulWidget {
  final CollectionsRepository collectionsRepository;

  const CollectionsRoute({Key key, @required this.collectionsRepository})
      : assert(collectionsRepository != null),
        super(key: key);

  @override
  _CollectionsRouteState createState() => _CollectionsRouteState();
}

class _CollectionsRouteState extends State<CollectionsRoute> {
  CollectionsBloc _collectionsBloc;
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _collectionsBloc = CollectionsBloc(widget.collectionsRepository);
    _collectionsBloc.dispatch(CollectionsFetchEvent());
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _collectionsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _collectionsBloc,
      builder: (context, currentState) {
        if (currentState is CollectionsEmptyState) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (currentState is CollectionsLoadedState) {
          final collections = currentState.collections;
          if (collections.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('No more collections to show!'),
              ),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              if (index >= collections.length) {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final currentCollection = collections[index];
              return TransitionToImage(
                image: AdvancedNetworkImage(
                  currentCollection.coverPhoto.urls.regular,
                  useDiskCache: true,
                ),
                loadingWidget: FittedBox(
                  child: Container(
                    color: _convertHexToColor(
                      currentCollection.coverPhoto.color,
                    ),
                    width: currentCollection.coverPhoto.width.toDouble(),
                    height: currentCollection.coverPhoto.height.toDouble(),
                  ),
                  fit: BoxFit.cover,
                ),
                fit: BoxFit.cover,
              );
            },
            itemCount: collections.length + 1,
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
      _collectionsBloc.dispatch(CollectionsFetchEvent());
    }
  }

  Color _convertHexToColor(String hexCode) {
    return Color(int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }
}
