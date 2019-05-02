import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';
import 'package:yet_another_wallpaper_app/src/photos/route/photos_route.dart';
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

  runApp(
    MyApp(
      photosRepository: photosRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  final PhotosRepository photosRepository;

  const MyApp({Key key, @required this.photosRepository})
      : assert(photosRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Yet Another Wallpaper App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Yet Another Wallpaper App'),
        ),
        body: PhotosRoute(
          photosRepository: photosRepository,
        ),
      ),
    );
  }
}
