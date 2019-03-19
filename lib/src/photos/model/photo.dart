import 'package:built_value/built_value.dart';

import 'package:yet_another_wallpaper_app/src/users/model/user.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  String get id;

  @nullable
  @BuiltValueField(wireName: 'created_at')
  DateTime get createdAt;

  @nullable
  int get width;

  @nullable
  int get height;

  @nullable
  String get color;

  @nullable
  String get description;

  @nullable
  PhotoLocation get location;

  @nullable
  PhotoExif get exif;

  @nullable
  @BuiltValueField(wireName: 'views')
  int get viewCount;

  @nullable
  @BuiltValueField(wireName: 'likes')
  int get likeCount;

  @nullable
  @BuiltValueField(wireName: 'downloads')
  int get downloadCount;

  @nullable
  User get user;

  PhotoUrls get urls;

  @nullable
  PhotoLinks get links;

  Photo._();

  factory Photo([updates(PhotoBuilder b)]) = _$Photo;
}

abstract class PhotoLocation
    implements Built<PhotoLocation, PhotoLocationBuilder> {
  String get title;

  @nullable
  String get name;

  @nullable
  String get city;

  @nullable
  String get country;

  PhotoLocationPosition get position;

  PhotoLocation._();

  factory PhotoLocation([updates(PhotoLocationBuilder b)]) = _$PhotoLocation;
}

abstract class PhotoLocationPosition
    implements Built<PhotoLocationPosition, PhotoLocationPositionBuilder> {
  @nullable
  double get latitude;

  @nullable
  double get longitude;

  PhotoLocationPosition._();

  factory PhotoLocationPosition([updates(PhotoLocationPositionBuilder b)]) =
      _$PhotoLocationPosition;
}

abstract class PhotoExif implements Built<PhotoExif, PhotoExifBuilder> {
  String get make;

  String get model;

  @BuiltValueField(wireName: 'exposure_time')
  String get exposureTime;

  String get aperture;

  @BuiltValueField(wireName: 'focal_length')
  String get focalLength;

  int get iso;

  PhotoExif._();

  factory PhotoExif([updates(PhotoExifBuilder b)]) = _$PhotoExif;
}

abstract class PhotoUrls implements Built<PhotoUrls, PhotoUrlsBuilder> {
  String get raw;

  String get full;

  String get regular;

  String get small;

  String get thumb;

  PhotoUrls._();

  factory PhotoUrls([updates(PhotoUrlsBuilder b)]) = _$PhotoUrls;
}

abstract class PhotoLinks implements Built<PhotoLinks, PhotoLinksBuilder> {
  String get self;

  String get html;

  String get download;

  @BuiltValueField(wireName: 'download_location')
  String get downloadLocation;

  PhotoLinks._();

  factory PhotoLinks([updates(PhotoLinksBuilder b)]) = _$PhotoLinks;
}
