import 'dart:async';

import 'package:built_collection/built_collection.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';
import 'package:yet_another_wallpaper_app/src/photos/service/photos_service.dart';
import 'package:yet_another_wallpaper_app/src/utils/api_constants.dart';

class PhotosRepository {
  final PhotosService _photosService;

  PhotosRepository(this._photosService) : assert(_photosService != null);

  Future<BuiltList<Photo>> getPhotos(
          {int page = 1,
          int perPage = 30,
          String sortOrder = PhotosSortOrder.latest}) async =>
      await _photosService.getPhotos(
          page: page, perPage: perPage, sortOrder: sortOrder);

  Future<Photo> getPhoto({@required String photoId}) async =>
      await _photosService.getPhoto(photoId: photoId);

  Future<BuiltList<Photo>> getRandomPhotos({int count = 1}) async =>
      await _photosService.getRandomPhotos(count: count);

  Future<bool> trackPhotoDownload({@required String photoId}) async =>
      await _photosService.trackPhotoDownload(photoId: photoId);
}
