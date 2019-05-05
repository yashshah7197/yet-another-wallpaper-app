import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_event.dart';
import 'package:yet_another_wallpaper_app/src/collections/bloc/collections_state.dart';
import 'package:yet_another_wallpaper_app/src/collections/repository/collections_repository.dart';

class CollectionsBloc extends Bloc<CollectionsEvent, CollectionsState> {
  final CollectionsRepository _collectionsRepository;

  int _currentPage = 1;

  CollectionsBloc(this._collectionsRepository)
      : assert(_collectionsRepository != null);

  @override
  CollectionsState get initialState => CollectionsEmptyState();

  @override
  Stream<CollectionsState> mapEventToState(
      CollectionsEvent currentEvent) async* {
    if (currentEvent is CollectionsFetchEvent) {
      if (currentState is CollectionsEmptyState) {
        final collections =
            await _collectionsRepository.getCollections(page: _currentPage);
        _currentPage++;
        yield CollectionsLoadedState(collections: collections.toList());
        return;
      }
      if (currentState is CollectionsLoadedState) {
        final collections =
            await _collectionsRepository.getCollections(page: _currentPage);
        _currentPage++;
        yield CollectionsLoadedState(
            collections:
                List.from((currentState as CollectionsLoadedState).collections)
                  ..addAll(collections));
      }
    }
  }

  @override
  Stream<CollectionsState> transform(
    Stream<CollectionsEvent> events,
    Stream<CollectionsState> next(CollectionsEvent event),
  ) {
    return super.transform(
      (events as Observable<CollectionsEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }
}
