import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

@immutable
abstract class PhotosState extends Equatable {
  PhotosState([List props = const []]) : super(props);
}

class PhotosEmptyState extends PhotosState {
  @override
  String toString() => 'Photos State: Uninitialized';
}

class PhotosLoadingState extends PhotosState {
  @override
  String toString() => 'Photos State: Loading';
}

class PhotosLoadedState extends PhotosState {
  final List<Photo> photos;

  PhotosLoadedState({this.photos}) : super([photos]);

  @override
  String toString() => 'Photos State: Loaded';
}

class PhotosErrorState extends PhotosState {
  @override
  String toString() => 'Photos State: Error';
}
