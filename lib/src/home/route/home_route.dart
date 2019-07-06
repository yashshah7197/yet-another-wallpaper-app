import 'package:flutter/material.dart';
import 'package:flutter_advanced_networkimage/provider.dart';
import 'package:flutter_advanced_networkimage/transition.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
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
import 'package:yet_another_wallpaper_app/src/search/bloc/search_bloc.dart';
import 'package:yet_another_wallpaper_app/src/search/bloc/search_event.dart';
import 'package:yet_another_wallpaper_app/src/search/bloc/search_state.dart';
import 'package:yet_another_wallpaper_app/src/search/repository/search_repository.dart';

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
              actions: _buildAppBarActions(currentTab),
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

  List<Widget> _buildAppBarActions(AppTab currentTab) {
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

  List<Widget> _buildPhotosAppBarActions() {
    return [
      PopupMenuButton<PhotosSortOrder>(
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
      ),
      IconButton(
        icon: Icon(Icons.search),
        onPressed: () {
          showSearch(
              context: context,
              delegate: _PhotosSearchDelegate(
                  Provider.of<SearchRepository>(context)));
        },
      ),
    ];
  }

  List<Widget> _buildCollectionsAppBarActions() {
    return [
      PopupMenuButton<CollectionsSortOrder>(
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
          _collectionsBloc
              .dispatch(CollectionsSortOrderUpdateEvent(collectionsSortOrder));
        },
      ),
    ];
  }

  List<Widget> _buildDownloadsAppBarActions() {
    return [
      PopupMenuButton<DownloadsSortOrder>(
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
      ),
    ];
  }
}

class _PhotosSearchDelegate extends SearchDelegate {
  final SearchRepository _searchRepository;
  SearchBloc _searchBloc;

  _PhotosSearchDelegate(this._searchRepository);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
          color: Colors.black,
        ),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.black,
      ),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    if (query == '') {
      return Container(
        child: Center(
          child: Text('Type your query and press search'),
        ),
      );
    }
    _searchBloc = SearchBloc(_searchRepository);
    _searchBloc.dispatch(SearchPhotosEvent(query));
    ScrollController scrollController = ScrollController();
    scrollController.addListener(() {
      final currentScrollPosition = scrollController.position.pixels;
      final maxScrollPosition = scrollController.position.maxScrollExtent;
      if (currentScrollPosition == maxScrollPosition) {
        _searchBloc.dispatch(SearchPhotosEvent(query));
      }
    });
    return BlocBuilder(
      bloc: _searchBloc,
      builder: (context, currentState) {
        if (currentState is SearchEmptyState) {
          return Container();
        }
        if (currentState is SearchSearchingState) {
          return Container(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        if (currentState is SearchPhotosLoadedState) {
          final photos = currentState.photos;
          if (photos.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('No photos found!'),
              ),
            );
          }
          return ListView.builder(
            itemBuilder: (context, index) {
              if (index >= photos.length) {
                return Container(
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: CircularProgressIndicator(),
                  ),
                );
              }
              final currentPhoto = photos[index];
              return AspectRatio(
                aspectRatio: 1.0 / 1.0,
                child: GridTile(
                  child: GestureDetector(
                    child: TransitionToImage(
                      image: AdvancedNetworkImage(
                        currentPhoto.urls.regular,
                        useDiskCache: true,
                      ),
                      loadingWidget: FittedBox(
                        child: Container(
                          color: _convertHexToColor(currentPhoto.color),
                          width: currentPhoto.width.toDouble(),
                          height: currentPhoto.height.toDouble(),
                        ),
                        fit: BoxFit.cover,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  footer: GridTileBar(
                    leading: CircleAvatar(
                      backgroundImage: AdvancedNetworkImage(
                        currentPhoto.user.profileImage.large,
                        useDiskCache: true,
                      ),
                    ),
                    title: Text(currentPhoto.user.name),
                    subtitle: Text('@${currentPhoto.user.username}'),
                  ),
                ),
              );
            },
            itemCount: photos.length + 1,
            controller: scrollController,
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Type your query and press search'),
      ),
    );
  }

  Color _convertHexToColor(String hexCode) {
    return Color(int.parse(hexCode.substring(1, 7), radix: 16) + 0xFF000000);
  }

  @override
  ThemeData appBarTheme(BuildContext context) {
    return Theme.of(context);
  }
}
