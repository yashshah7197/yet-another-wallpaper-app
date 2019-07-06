import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yet_another_wallpaper_app/src/search/repository/search_repository.dart';

import 'search_event.dart';
import 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _searchRepository;

  int _currentPage = 1;

  SearchBloc(this._searchRepository) : assert(_searchRepository != null);

  @override
  SearchState get initialState => SearchEmptyState();

  @override
  Stream<SearchState> mapEventToState(SearchEvent currentEvent) async* {
    if (currentEvent is SearchPhotosEvent) {
      if (currentState is SearchEmptyState) {
        final query = currentEvent.query;
        final searchResult = await _searchRepository.searchPhotos(
            query: query, page: _currentPage);
        final photos = searchResult.results;
        _currentPage++;
        yield SearchPhotosLoadedState(photos: photos.toList());
      }
      if (currentState is SearchPhotosLoadedState) {
        final query = currentEvent.query;
        final searchResult = await _searchRepository.searchPhotos(
            query: query, page: _currentPage);
        final photos = searchResult.results;
        _currentPage++;
        yield SearchPhotosLoadedState(
            photos: List.from((currentState as SearchPhotosLoadedState).photos)
              ..addAll(photos));
      }
    }
  }

  @override
  Stream<SearchState> transform(
    Stream<SearchEvent> events,
    Stream<SearchState> next(SearchEvent event),
  ) {
    return super.transform(
      (events as Observable<SearchEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }
}
