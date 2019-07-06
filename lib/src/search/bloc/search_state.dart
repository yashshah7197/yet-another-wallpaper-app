import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photo.dart';

@immutable
abstract class SearchState extends Equatable {
  SearchState([List props = const []]) : super(props);
}

class SearchEmptyState extends SearchState {
  @override
  String toString() => 'Search State: Empty';
}

class SearchSearchingState extends SearchState {
  @override
  String toString() => 'Search State: Searching';
}

class SearchPhotosLoadedState extends SearchState {
  final List<Photo> photos;

  SearchPhotosLoadedState({this.photos}) : super([photos]);

  @override
  String toString() {
    return 'Search State: Photos Loaded';
  }
}
