import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:yet_another_wallpaper_app/src/users/model/user.dart';

part 'photo.g.dart';

abstract class Photo implements Built<Photo, PhotoBuilder> {
  static Serializer<Photo> get serializer => _$photoSerializer;

  @nullable
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

  @nullable
  PhotoUrls get urls;

  @nullable
  PhotoLinks get links;

  Photo._();

  factory Photo([updates(PhotoBuilder b)]) = _$Photo;
}

abstract class PhotoLocation
    implements Built<PhotoLocation, PhotoLocationBuilder> {
  static Serializer<PhotoLocation> get serializer => _$photoLocationSerializer;

  @nullable
  String get title;

  @nullable
  String get name;

  @nullable
  String get city;

  @nullable
  String get country;

  @nullable
  PhotoLocationPosition get position;

  PhotoLocation._();

  factory PhotoLocation([updates(PhotoLocationBuilder b)]) = _$PhotoLocation;
}

abstract class PhotoLocationPosition
    implements Built<PhotoLocationPosition, PhotoLocationPositionBuilder> {
  static Serializer<PhotoLocationPosition> get serializer =>
      _$photoLocationPositionSerializer;

  @nullable
  double get latitude;

  @nullable
  double get longitude;

  PhotoLocationPosition._();

  factory PhotoLocationPosition([updates(PhotoLocationPositionBuilder b)]) =
      _$PhotoLocationPosition;
}

abstract class PhotoExif implements Built<PhotoExif, PhotoExifBuilder> {
  static Serializer<PhotoExif> get serializer => _$photoExifSerializer;

  @nullable
  String get make;

  @nullable
  String get model;

  @nullable
  @BuiltValueField(wireName: 'exposure_time')
  String get exposureTime;

  @nullable
  String get aperture;

  @nullable
  @BuiltValueField(wireName: 'focal_length')
  String get focalLength;

  @nullable
  int get iso;

  PhotoExif._();

  factory PhotoExif([updates(PhotoExifBuilder b)]) = _$PhotoExif;
}

abstract class PhotoUrls implements Built<PhotoUrls, PhotoUrlsBuilder> {
  static Serializer<PhotoUrls> get serializer => _$photoUrlsSerializer;

  @nullable
  String get raw;

  @nullable
  String get full;

  @nullable
  String get regular;

  @nullable
  String get small;

  @nullable
  String get thumb;

  PhotoUrls._();

  factory PhotoUrls([updates(PhotoUrlsBuilder b)]) = _$PhotoUrls;
}

abstract class PhotoLinks implements Built<PhotoLinks, PhotoLinksBuilder> {
  static Serializer<PhotoLinks> get serializer => _$photoLinksSerializer;

  @nullable
  String get self;

  @nullable
  String get html;

  @nullable
  String get download;

  @nullable
  @BuiltValueField(wireName: 'download_location')
  String get downloadLocation;

  PhotoLinks._();

  factory PhotoLinks([updates(PhotoLinksBuilder b)]) = _$PhotoLinks;
}
