import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photo_details_event.dart';
import 'package:yet_another_wallpaper_app/src/photos/bloc/photo_details_state.dart';
import 'package:yet_another_wallpaper_app/src/photos/repository/photos_repository.dart';

class PhotoDetailsBloc extends Bloc<PhotoDetailsEvent, PhotoDetailsState> {
  final PhotosRepository _photosRepository;

  PhotoDetailsBloc(this._photosRepository) : assert(_photosRepository != null);

  @override
  PhotoDetailsState get initialState => PhotoDetailsUninitializedState();

  @override
  Stream<PhotoDetailsState> mapEventToState(
      PhotoDetailsEvent currentEvent) async* {
    if (currentEvent is PhotoDetailsFetchEvent) {
      final photo = await _photosRepository.getPhoto(
        photoId: currentEvent.photoId,
      );
      yield PhotoDetailsLoadedState(photo: photo);
      return;
    }
  }
}
