import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_event.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';
import 'package:yet_another_wallpaper_app/src/collections/route/collections_route.dart';
import 'package:yet_another_wallpaper_app/src/downloads/route/downloads_route.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab_bloc.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab_event.dart';
import 'package:yet_another_wallpaper_app/src/home/widget/app_tab_selector.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';
import 'package:yet_another_wallpaper_app/src/photos/route/photos_route.dart';

class HomeRoute extends StatefulWidget {
  final CollectionsRepository collectionsRepository;
  final PhotosRepository photosRepository;

  const HomeRoute(
      {Key key,
      @required this.collectionsRepository,
      @required this.photosRepository})
      : assert(collectionsRepository != null),
        assert(photosRepository != null),
        super(key: key);

  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  AppTabBloc _appTabBloc;
  CollectionsBloc _collectionsBloc;
  PhotosBloc _photosBloc;

  @override
  void initState() {
    super.initState();
    _appTabBloc = AppTabBloc();
    _collectionsBloc = CollectionsBloc(widget.collectionsRepository);
    _photosBloc = PhotosBloc(widget.photosRepository);
    _collectionsBloc.dispatch(CollectionsFetchEvent());
    _photosBloc.dispatch(PhotosFetchEvent());
  }

  @override
  void dispose() {
    _appTabBloc.dispose();
    _collectionsBloc.dispose();
    _photosBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _appTabBloc,
      builder: (context, currentTab) {
        return BlocProviderTree(
          blocProviders: [
            BlocProvider<AppTabBloc>(bloc: _appTabBloc),
            BlocProvider<CollectionsBloc>(bloc: _collectionsBloc),
            BlocProvider<PhotosBloc>(bloc: _photosBloc)
          ],
          child: Scaffold(
            appBar: AppBar(
              title: Text('Yet Another Wallpaper App'),
            ),
            body: _buildBody(currentTab),
            bottomNavigationBar: AppTabSelector(
              currentTab: currentTab,
              onAppTabSelected: (currentTab) =>
                  _appTabBloc.dispatch(AppTabUpdateEvent(currentTab)),
            ),
          ),
        );
      },
    );
  }

  Widget _buildBody(AppTab currentTab) {
    if (currentTab == AppTab.photos) {
      return PhotosRoute();
    } else if (currentTab == AppTab.collections) {
      return CollectionsRoute();
    } else if (currentTab == AppTab.downloads) {
      return DownloadsRoute();
    }
  }
}
