import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

@immutable
abstract class PhotoDetailsState extends Equatable {
  PhotoDetailsState([List props = const []]) : super(props);
}

class PhotoDetailsUninitializedState extends PhotoDetailsState {
  @override
  String toString() => 'Photo Details State: Uninitialized';
}

class PhotoDetailsLoadedState extends PhotoDetailsState {
  final Photo photo;

  PhotoDetailsLoadedState({this.photo}) : super([photo]);

  @override
  String toString() => 'Photo Details State: Loaded';
}
