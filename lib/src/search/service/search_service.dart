import 'dart:async';

import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/search/model/search_result.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';
import 'package:yet_another_wallpaper_app/src/utils/serializers.dart';

class SearchService {
  final Dio httpClient;

  SearchService({@required this.httpClient}) : assert(httpClient != null);

  Future<SearchResult<Photo>> searchPhotos(
      {@required String query, int page = 1, int perPage = 30}) async {
    try {
      final response = await httpClient.get('search/photos',
          queryParameters: {'query': query, 'page': page, 'per_page': perPage});
      return serializers.deserialize(response.data,
          specifiedType:
              const FullType(SearchResult, const [const FullType(Photo)]));
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a search result with nulls
      return SearchResult<Photo>();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return SearchResult<Photo>();
    }
  }

  Future<SearchResult<Collection>> searchCollections(
      {@required String query, int page = 1, int perPage = 30}) async {
    try {
      final response = await httpClient.get('search/collections',
          queryParameters: {'query': query, 'page': page, 'per_page': perPage});
      return serializers.deserialize(response.data,
          specifiedType:
              const FullType(SearchResult, const [const FullType(Collection)]));
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a search result with nulls
      return SearchResult<Collection>();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return SearchResult<Collection>();
    }
  }

  Future<SearchResult<User>> searchUsers(
      {@required String query, int page = 1, int perPage = 30}) async {
    try {
      final response = await httpClient.get('search/users',
          queryParameters: {'query': query, 'page': page, 'per_page': perPage});
      return serializers.deserialize(response.data,
          specifiedType:
              const FullType(SearchResult, const [const FullType(User)]));
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning a search result with nulls
      return SearchResult<User>();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return SearchResult<User>();
    }
  }
}
