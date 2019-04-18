import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photos_state.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';

class PhotosBloc extends Bloc<PhotosEvent, PhotosState> {
  final PhotosRepository _photosRepository;

  int _currentPage = 1;

  PhotosBloc(this._photosRepository) : assert(_photosRepository != null);

  @override
  PhotosState get initialState => PhotosEmptyState();

  @override
  Stream<PhotosState> mapEventToState(PhotosEvent currentEvent) async* {
    if (currentEvent is PhotosFetchEvent) {
      if (currentState is PhotosEmptyState) {
        final photos = await _photosRepository.getPhotos(page: _currentPage);
        _currentPage++;
        yield PhotosLoadedState(photos: photos.toList());
        return;
      }
      if (currentState is PhotosLoadedState) {
        final photos = await _photosRepository.getPhotos(page: _currentPage);
        _currentPage++;
        yield PhotosLoadedState(
            photos: List.from((currentState as PhotosLoadedState).photos)
              ..addAll(photos));
      }
    }
  }

  @override
  Stream<PhotosState> transform(
      Stream<PhotosEvent> events, Stream<PhotosState> next(PhotosEvent event)) {
    return super.transform(
      (events as Observable<PhotosEvent>).debounce(
        Duration(milliseconds: 500),
      ),
      next,
    );
  }
}
