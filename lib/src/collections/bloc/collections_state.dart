import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/collections/model/collection.dart';

@immutable
abstract class CollectionsState extends Equatable {
  CollectionsState([List props = const []]) : super(props);
}

class CollectionsEmptyState extends CollectionsState {
  @override
  String toString() => 'Collections State: Empty';
}

class CollectionsLoadingState extends CollectionsState {
  @override
  String toString() => 'Collections State: Loading';
}

class CollectionsLoadedState extends CollectionsState {
  final List<Collection> collections;

  CollectionsLoadedState({this.collections}) : super([collections]);

  @override
  String toString() => 'Collections State: Loaded';
}

class CollectionsErrorState extends CollectionsState {
  @override
  String toString() => 'Collections State: Error';
}
