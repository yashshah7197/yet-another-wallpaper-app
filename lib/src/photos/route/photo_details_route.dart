import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/photos/widget/backdrop.dart';

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

class PhotoDetailsFrontLayer extends StatelessWidget {
  final Photo photo;

  const PhotoDetailsFrontLayer({Key key, @required this.photo})
      : assert(photo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AdvancedNetworkImage(
          photo.user.profileImage.large,
          useDiskCache: true,
        ),
      ),
      title: Text(photo.user.name),
      subtitle: Text('@${photo.user.username}'),
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
