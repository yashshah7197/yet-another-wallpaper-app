import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:provider/provider.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';
import 'package:yet_another_wallpaper_app/src/collections/service/collections_service.dart';
import 'package:yet_another_wallpaper_app/src/home/route/home_route.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';
import 'package:yet_another_wallpaper_app/src/photos/service/photos_service.dart';
import 'package:yet_another_wallpaper_app/src/search/repository/search_repository.dart';
import 'package:yet_another_wallpaper_app/src/search/service/search_service.dart';
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

  final searchService = SearchService(httpClient);
  final searchRepository = SearchRepository(searchService);

  runApp(
    MyApp(
      collectionsRepository: collectionsRepository,
      photosRepository: photosRepository,
      searchRepository: searchRepository,
    ),
  );
}

class MyApp extends StatelessWidget {
  final CollectionsRepository collectionsRepository;
  final PhotosRepository photosRepository;
  final SearchRepository searchRepository;

  const MyApp(
      {Key key,
      @required this.collectionsRepository,
      @required this.photosRepository,
      @required this.searchRepository})
      : assert(collectionsRepository != null),
        assert(photosRepository != null),
        assert(searchRepository != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<PhotosRepository>.value(value: photosRepository),
        Provider<SearchRepository>.value(value: searchRepository),
      ],
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
