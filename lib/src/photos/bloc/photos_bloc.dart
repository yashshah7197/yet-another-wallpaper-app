import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_state.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photos_sort_order.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepository _photosRepository;

  PhotosSortOrder _photosSortOrder = PhotosSortOrder.latest;

  int _currentPage = 1;

  PhotosBloc(this._photosRepository) : assert(_photosRepository != null);

  @override
  PhotosState get initialState => PhotosEmptyState();

  @override
  Stream<PhotosState> mapEventToState(PhotosEvent currentEvent) async* {
    if (currentEvent is PhotosFetchEvent) {
      if (currentState is PhotosEmptyState) {
        final photos = await _photosRepository.getPhotos(
            page: _currentPage, sortOrder: _photosSortOrder);
        _currentPage++;
        yield PhotosLoadedState(photos: photos.toList());
        return;
      }
      if (currentState is PhotosLoadedState) {
        final photos = await _photosRepository.getPhotos(
            page: _currentPage, sortOrder: _photosSortOrder);
        _currentPage++;
        yield PhotosLoadedState(
            photos: List.from((currentState as PhotosLoadedState).photos)
              ..addAll(photos));
        return;
      }
    }
    if (currentEvent is PhotosSortOrderUpdateEvent) {
      _photosSortOrder = currentEvent.photosSortOrder;
      _currentPage = 1;
      yield PhotosEmptyState();
      dispatch(PhotosFetchEvent());
    }
  }

  @override
  Stream<PhotosState> transform(
    Stream<PhotosEvent> events,
    Stream<PhotosState> next(PhotosEvent event),
  ) {
    return super.transform(
      (events as Observable<PhotosEvent>).debounceTime(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }
}
