import 'dart:async';

import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/search/model/search_result.dart';
import 'package:yet_another_wallpaper_app/src/search/service/search_service.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';

class SearchRepository {
  final SearchService searchService;

  SearchRepository({@required this.searchService})
      : assert(searchService != null);

  Future<SearchResult<Photo>> searchPhotos(
          {@required String query, int page = 1, int perPage = 30}) async =>
      await searchService.searchPhotos(
          query: query, page: page, perPage: perPage);

  Future<SearchResult<Collection>> searchCollections(
          {@required String query, int page = 1, int perPage = 30}) async =>
      await searchService.searchCollections(
          query: query, page: page, perPage: perPage);

  Future<SearchResult<User>> searchUsers(
          {@required String query, int page = 1, int perPage = 30}) async =>
      await searchService.searchUsers(
          query: query, page: page, perPage: perPage);
}
