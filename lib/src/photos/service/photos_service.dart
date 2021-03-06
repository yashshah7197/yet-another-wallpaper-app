import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photos_sort_order.dart';
import 'package:yet_another_wallpaper_app/src/utils/serializers.dart';

class PhotosService {
  final Dio _httpClient;

  PhotosService(this._httpClient) : assert(_httpClient != null);

  Future<BuiltList<Photo>> getPhotos(
      {int page = 1,
      int perPage = 30,
      PhotosSortOrder sortOrder = PhotosSortOrder.latest}) async {
    try {
      final response = await _httpClient.get('photos', queryParameters: {
        'page': page,
        'per_page': perPage,
        'order_by': sortOrder.toString().split('.').last
      });
      return deserializeListOf<Photo>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }

  Future<Photo> getPhoto({@required String photoId}) async {
    try {
      final response = await _httpClient.get('photos/$photoId');
      return deserialize<Photo>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a photo with nulls
      return Photo();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return Photo();
    }
  }

  Future<BuiltList<Photo>> getRandomPhotos({int count = 1}) async {
    try {
      final response = await _httpClient
          .get('photos/random', queryParameters: {'count': count});
      return deserializeListOf<Photo>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning an empty list
      return BuiltList.from(Iterable.empty());
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return BuiltList.from(Iterable.empty());
    }
  }

  Future<bool> trackPhotoDownload({@required String photoId}) async {
    try {
      await _httpClient.get('photos/$photoId/download');
      return true;
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning false
      return false;
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return false;
    }
  }
}
