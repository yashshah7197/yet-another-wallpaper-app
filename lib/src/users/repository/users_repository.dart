import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/users/model/user.dart';
import 'package:yet_another_wallpaper_app/src/users/service/users_service.dart';
import 'package:yet_another_wallpaper_app/src/utils/api_constants.dart';

class UsersRepository {
  final UsersService _usersService;

  UsersRepository(this._usersService) : assert(_usersService != null);

  Future<User> getUserProfile({@required String username}) async =>
      await _usersService.getUserProfile(username: username);

  Future<BuiltList<Photo>> getUserPhotos(
          {@required String username,
          int page = 1,
          int perPage = 30,
          String sortOrder = PhotosSortOrder.latest}) async =>
      await _usersService.getUserPhotos(
          username: username,
          page: page,
          perPage: perPage,
          sortOrder: sortOrder);

  Future<BuiltList<Photo>> getUserLikedPhotos(
          {@required String username,
          int page = 1,
          int perPage = 30,
          String sortOrder = PhotosSortOrder.latest}) async =>
      await _usersService.getUserLikedPhotos(
          username: username,
          page: page,
          perPage: perPage,
          sortOrder: sortOrder);

  Future<BuiltList<Collection>> getUserCollections(
          {@required String username, int page = 1, int perPage = 10}) async =>
      _usersService.getUserCollections(
          username: username, page: page, perPage: perPage);
}
