import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';
import 'package:yet_another_wallpaper_app/src/collections/service/collections_service.dart';
import 'package:yet_another_wallpaper_app/src/home/route/home_route.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';
import 'package:yet_another_wallpaper_app/src/photos/service/photos_service.dart';
import 'package:yet_another_wallpaper_app/src/utils/api_constants.dart';

void main() {
  final httpClientOptions = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    headers: ApiConstants.requestHeaders,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  );
  final httpClient = Dio(httpClientOptions);

  final photosService = PhotosService(httpClient);
  final photosRepository = PhotosRepository(photosService);

  final collectionsService = CollectionsService(httpClient);
  final collectionsRepository = CollectionsRepository(collectionsService);

  runApp(
    MyApp(
      collectionsRepository: collectionsRepository,
      photosRepository: photosRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  final CollectionsRepository collectionsRepository;
  final PhotosRepository photosRepository;

  const MyApp(
      {Key key,
      @required this.collectionsRepository,
      @required this.photosRepository})
      : assert(collectionsRepository != null),
        assert(photosRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<PhotosRepository>.value(
      value: photosRepository,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Yet Another Wallpaper App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeRoute(
          collectionsRepository: collectionsRepository,
          photosRepository: photosRepository,
        ),
      ),
    );
  }
}
