import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/collections/service/collections_service.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

class CollectionsRepository {
  final CollectionsService _collectionsService;

  CollectionsRepository(this._collectionsService)
      : assert(_collectionsService != null);

  Future<BuiltList<Collection>> getCollections(
          {int page = 1, int perPage = 10}) async =>
      await _collectionsService.getCollections(page: page, perPage: perPage);

  Future<BuiltList<Collection>> getFeaturedCollections(
          {int page = 1, int perPage = 10}) async =>
      await _collectionsService.getFeaturedCollections(
          page: page, perPage: perPage);

  Future<Collection> getCollection({@required int collectionId}) async =>
      await _collectionsService.getCollection(collectionId: collectionId);

  Future<BuiltList<Photo>> getCollectionPhotos(
          {@required int collectionId, int page = 1, int perPage = 30}) async =>
      await _collectionsService.getCollectionPhotos(
          collectionId: collectionId, page: page, perPage: perPage);

  Future<BuiltList<Collection>> getRelatedCollections(
          {@required int collectionId}) async =>
      await _collectionsService.getRelatedCollections(
          collectionId: collectionId);
}
