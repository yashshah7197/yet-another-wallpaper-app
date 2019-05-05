import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_bloc.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_event.dart';
import 'package:yet_another_wallpaper_app/src/collections/model/collections_sort_order.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';
import 'package:yet_another_wallpaper_app/src/collections/route/collections_route.dart';
import 'package:yet_another_wallpaper_app/src/downloads/model/downloads_sort_order.dart';
import 'package:yet_another_wallpaper_app/src/downloads/route/downloads_route.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab_bloc.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab_event.dart';
import 'package:yet_another_wallpaper_app/src/home/widget/app_tab_selector.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photos_sort_order.dart';
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
              actions: <Widget>[
                _buildAppBarActions(currentTab),
              ],
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

  Widget _buildAppBarActions(AppTab currentTab) {
    if (currentTab == AppTab.photos) {
      return _buildPhotosAppBarActions();
    }
    if (currentTab == AppTab.collections) {
      return _buildCollectionsAppBarActions();
    }
    if (currentTab == AppTab.downloads) {
      return _buildDownloadsAppBarActions();
    }
  }

  Widget _buildPhotosAppBarActions() {
    return PopupMenuButton<PhotosSortOrder>(
      icon: Icon(Icons.filter_list),
      itemBuilder: (context) => <PopupMenuItem<PhotosSortOrder>>[
            PopupMenuItem<PhotosSortOrder>(
              child: Text('Latest'),
              value: PhotosSortOrder.latest,
            ),
            PopupMenuItem<PhotosSortOrder>(
              child: Text('Oldest'),
              value: PhotosSortOrder.oldest,
            ),
            PopupMenuItem<PhotosSortOrder>(
              child: Text('Popular'),
              value: PhotosSortOrder.popular,
            )
          ],
      onSelected: (photosSortOrder) {
        _photosBloc.dispatch(PhotosSortOrderUpdateEvent(photosSortOrder));
      },
    );
  }

  Widget _buildCollectionsAppBarActions() {
    return PopupMenuButton<CollectionsSortOrder>(
      icon: Icon(Icons.filter_list),
      itemBuilder: (context) => <PopupMenuItem<CollectionsSortOrder>>[
            PopupMenuItem<CollectionsSortOrder>(
              child: Text('Latest'),
              value: CollectionsSortOrder.latest,
            ),
            PopupMenuItem<CollectionsSortOrder>(
              child: Text('Featured'),
              value: CollectionsSortOrder.featured,
            )
          ],
      onSelected: (collectionsSortOrder) {
        if (collectionsSortOrder == CollectionsSortOrder.latest) {
          print('Collections Sort Order: Latest');
        }
        if (collectionsSortOrder == CollectionsSortOrder.featured) {
          print('Collections Sort Order: Featured');
        }
      },
    );
  }

  Widget _buildDownloadsAppBarActions() {
    return PopupMenuButton<DownloadsSortOrder>(
      icon: Icon(Icons.filter_list),
      itemBuilder: (context) => <PopupMenuItem<DownloadsSortOrder>>[
            PopupMenuItem<DownloadsSortOrder>(
              child: Text('All'),
              value: DownloadsSortOrder.all,
            ),
            PopupMenuItem<DownloadsSortOrder>(
              child: Text('In Progress'),
              value: DownloadsSortOrder.inProgress,
            ),
            PopupMenuItem<DownloadsSortOrder>(
              child: Text('Completed'),
              value: DownloadsSortOrder.completed,
            )
          ],
      onSelected: (downloadsSortOrder) {
        if (downloadsSortOrder == DownloadsSortOrder.all) {
          print('Downloads Sort Order: All');
        }
        if (downloadsSortOrder == DownloadsSortOrder.inProgress) {
          print('Downloads Sort Order: In Progress');
        }
        if (downloadsSortOrder == DownloadsSortOrder.completed) {
          print('Downloads Sort Order: Completed');
        }
      },
    );
  }
}
