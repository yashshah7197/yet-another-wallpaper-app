import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/utils/serializers.dart';

class CollectionsService {
  final Dio _httpClient;

  CollectionsService(this._httpClient) : assert(_httpClient != null);

  Future<BuiltList<Collection>> getCollections(
      {int page = 1, int perPage = 10}) async {
    try {
      final response = await _httpClient.get('collections',
          queryParameters: {'page': page, 'per_page': perPage});
      return deserializeListOf<Collection>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }

  Future<BuiltList<Collection>> getFeaturedCollections(
      {int page = 1, int perPage = 10}) async {
    try {
      final response = await _httpClient.get('collections/featured',
          queryParameters: {'page': page, 'per_page': perPage});
      return deserializeListOf<Collection>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }

  Future<Collection> getCollection({@required int collectionId}) async {
    try {
      final response = await _httpClient.get('collections/$collectionId');
      return deserialize<Collection>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a collection with nulls
      return Collection();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return Collection();
    }
  }

  Future<BuiltList<Photo>> getCollectionPhotos(
      {@required int collectionId, int page = 1, int perPage = 30}) async {
    try {
      final response = await _httpClient.get('collections/$collectionId/photos',
          queryParameters: {'page': page, 'per_page': perPage});
      return deserializeListOf<Photo>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }

  Future<BuiltList<Collection>> getRelatedCollections(
      {@required int collectionId}) async {
    try {
      final response =
          await _httpClient.get('collections/$collectionId/related');
      return deserializeListOf<Collection>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }
}
