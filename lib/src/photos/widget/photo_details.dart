import 'package:flutter/material.dart';
import 'package:outline_material_icons/outline_material_icons.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

class PhotoDetails extends StatelessWidget {
  final Photo photo;

  const PhotoDetails({Key key, @required this.photo})
      : assert(photo != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 16.0,
        right: 16.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _PhotoDetailsItem(
                  detailName: 'Camera Make',
                  detailValue:
                      photo?.exif?.make == null ? 'N/A' : photo.exif.make,
                  detailIcon: Icon(OMIcons.cameraRoll),
                ),
                _PhotoDetailsItem(
                  detailName: 'Camera Model',
                  detailValue:
                      photo?.exif?.model == null ? 'N/A' : photo.exif.model,
                  detailIcon: Icon(OMIcons.cameraAlt),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _PhotoDetailsItem(
                  detailName: 'ISO',
                  detailValue: photo?.exif?.iso == null
                      ? 'N/A'
                      : photo.exif.iso.toString(),
                  detailIcon: Icon(OMIcons.iso),
                ),
                _PhotoDetailsItem(
                  detailName: 'Aperture',
                  detailValue: photo?.exif?.aperture == null
                      ? 'N/A'
                      : 'ƒ/${photo.exif.aperture}',
                  detailIcon: Icon(OMIcons.camera),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _PhotoDetailsItem(
                  detailName: 'Focal Length',
                  detailValue: photo?.exif?.focalLength == null
                      ? 'N/A'
                      : '${photo.exif.focalLength}mm',
                  detailIcon: Icon(OMIcons.switchCamera),
                ),
                _PhotoDetailsItem(
                  detailName: 'Exposure Time',
                  detailValue: photo?.exif?.exposureTime == null
                      ? 'N/A'
                      : '${photo.exif.exposureTime}s',
                  detailIcon: Icon(OMIcons.timer),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _PhotoDetailsItem(
                  detailName: 'Dimensions',
                  detailValue: '${photo.width} x ${photo.height}',
                  detailIcon: Icon(OMIcons.aspectRatio),
                ),
                _PhotoDetailsItem(
                  detailName: 'Dominant Color',
                  detailValue: '${photo.color}',
                  detailIcon: Icon(OMIcons.colorLens),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24.0,
            ),
            child: Divider(
              height: 1.0,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 16.0,
              left: 16.0,
              right: 16.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(OMIcons.visibility),
                    Text(
                      'Views',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        photo.viewCount?.toString() ?? 'N/A',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(OMIcons.favoriteBorder),
                    Text(
                      'Likes',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        photo.likeCount?.toString() ?? 'N/A',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(OMIcons.saveAlt),
                    Text(
                      'Downloads',
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.5),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(
                        photo.downloadCount?.toString() ?? 'N/A',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 1.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _PhotoDetailsItem extends StatelessWidget {
  final String detailName;
  final String detailValue;
  final Icon detailIcon;

  const _PhotoDetailsItem(
      {Key key,
      @required this.detailName,
      @required this.detailValue,
      @required this.detailIcon})
      : assert(detailName != null),
        assert(detailValue != null),
        assert(detailIcon != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          detailIcon,
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    detailName,
                    style: TextStyle(
                      fontSize: 10.0,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1.5,
                    ),
                  ),
                  Text(
                    detailValue,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
