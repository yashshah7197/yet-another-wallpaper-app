import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_view/photo_view.dart';
import 'package:provider/provider.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photo_details_bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photo_details_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photo_details_state.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';
import 'package:yet_another_wallpaper_app/src/photos/widget/backdrop.dart';
import 'package:yet_another_wallpaper_app/src/photos/widget/photo_details.dart';

class PhotoDetailsRoute extends StatelessWidget {
  final Photo photo;

  const PhotoDetailsRoute({Key key, @required this.photo})
      : assert(photo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Backdrop(
      backLayer: PhotoDetailsBackLayer(photo: photo),
      frontLayer: PhotoDetailsFrontLayer(photo: photo),
    );
  }
}

class PhotoDetailsFrontLayer extends StatefulWidget {
  final Photo photo;

  const PhotoDetailsFrontLayer({Key key, @required this.photo})
      : assert(photo != null),
        super(key: key);

  @override
  _PhotoDetailsFrontLayerState createState() => _PhotoDetailsFrontLayerState();
}

class _PhotoDetailsFrontLayerState extends State<PhotoDetailsFrontLayer> {
  PhotoDetailsBloc _photoDetailsBloc;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _photoDetailsBloc = PhotoDetailsBloc(
      Provider.of<PhotosRepository>(context),
    );
    _photoDetailsBloc.dispatch(
      PhotoDetailsFetchEvent(
        widget.photo.id,
      ),
    );
  }

  @override
  void dispose() {
    _photoDetailsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: NeverScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AdvancedNetworkImage(
                widget.photo.user.profileImage.large,
                useDiskCache: true,
              ),
            ),
            title: Text(widget.photo.user.name),
            subtitle: Text('@${widget.photo.user.username}'),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 8.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Divider(
              height: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
            ),
            child: Text(
              'Metadata',
              style: TextStyle(fontSize: 14.0, letterSpacing: 1.5),
            ),
          ),
          BlocBuilder(
            bloc: _photoDetailsBloc,
            builder: (context, currentState) {
              if (currentState is PhotoDetailsUninitializedState) {
                return PhotoDetails(
                  photo: widget.photo,
                );
              }
              if (currentState is PhotoDetailsLoadedState) {
                return PhotoDetails(
                  photo: currentState.photo,
                );
              }
            },
          ),
        ],
      ),
    );
  }
}

class PhotoDetailsBackLayer extends StatelessWidget {
  final Photo photo;

  const PhotoDetailsBackLayer({Key key, @required this.photo})
      : assert(photo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: PhotoView(
          imageProvider: AdvancedNetworkImage(
            photo.urls.regular,
            useDiskCache: true,
          ),
          initialScale: PhotoViewComputedScale.covered,
          heroTag: photo.id,
          transitionOnUserGestures: true,
        ),
      ),
      onTap: () {
        Navigator.pop(context);
      },
    );
  }
}
