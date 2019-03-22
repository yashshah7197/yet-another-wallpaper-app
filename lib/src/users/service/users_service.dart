import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';
import 'package:yet_another_wallpaper_app/src/utils/api_constants.dart';
import 'package:yet_another_wallpaper_app/src/utils/serializers.dart';

class UsersService {
  final Dio httpClient;

  UsersService({@required this.httpClient}) : assert(httpClient != null);

  Future<User> getUserProfile({@required String username}) async {
    try {
      final response = await httpClient.get('users/$username');
      return deserialize<User>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a user with nulls
      return User();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return User();
    }
  }

  Future<BuiltList<Photo>> getUserPhotos(
      {@required String username,
      int page = 1,
      int perPage = 30,
      String sortOrder = PhotosSortOrder.latest}) async {
    try {
      final response = await httpClient.get('users/$username/photos',
          queryParameters: {
            'page': page,
            'per_page': perPage,
            'order_by': sortOrder
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

  Future<BuiltList<Photo>> getUserLikedPhotos(
      {@required String username,
      int page = 1,
      int perPage = 30,
      String sortOrder = PhotosSortOrder.latest}) async {
    try {
      final response = await httpClient.get('users/$username/likes',
          queryParameters: {
            'page': page,
            'per_page': perPage,
            'order_by': sortOrder
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

  Future<BuiltList<Collection>> getUserCollections(
      {@required String username, int page = 1, int perPage = 10}) async {
    try {
      final response = await httpClient.get('users/$username/collections',
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
}
