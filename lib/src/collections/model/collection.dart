import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';

part 'collection.g.dart';

abstract class Collection implements Built<Collection, CollectionBuilder> {
  static Serializer<Collection> get serializer => _$collectionSerializer;

  @nullable
  int get id;

  @nullable
  @BuiltValueField(wireName: 'published_at')
  DateTime get publishTime;

  @nullable
  String get title;

  @nullable
  String get description;

  @nullable
  @BuiltValueField(wireName: 'cover_photo')
  Photo get coverPhoto;

  @nullable
  @BuiltValueField(wireName: 'preview_photos')
  BuiltList<Photo> get previewPhotos;

  @nullable
  @BuiltValueField(wireName: 'featured')
  bool get isFeatured;

  @nullable
  @BuiltValueField(wireName: 'total_photos')
  int get photoCount;

  @nullable
  User get user;

  @nullable
  BuiltList<CollectionTag> get tags;

  @nullable
  CollectionLinks get links;

  Collection._();

  factory Collection([updates(CollectionBuilder b)]) = _$Collection;
}

abstract class CollectionTag
    implements Built<CollectionTag, CollectionTagBuilder> {
  static Serializer<CollectionTag> get serializer => _$collectionTagSerializer;

  @nullable
  String get title;

  CollectionTag._();

  factory CollectionTag([updates(CollectionTagBuilder b)]) = _$CollectionTag;
}

abstract class CollectionLinks
    implements Built<CollectionLinks, CollectionLinksBuilder> {
  static Serializer<CollectionLinks> get serializer =>
      _$collectionLinksSerializer;

  @nullable
  String get self;

  @nullable
  String get html;

  @nullable
  String get photos;

  @nullable
  String get related;

  CollectionLinks._();

  factory CollectionLinks([updates(CollectionLinksBuilder b)]) =
      _$CollectionLinks;
}
