import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:yet_another_wallpaper_app/src/collections/model/collections_sort_order.dart';

@immutable
abstract class CollectionsEvent extends Equatable {
  CollectionsEvent([List props = const []]) : super(props);
}

class CollectionsFetchEvent extends CollectionsEvent {
  @override
  String toString() => 'Collections Event: Fetch';
}

class CollectionsSortOrderUpdateEvent extends CollectionsEvent {
  final CollectionsSortOrder collectionsSortOrder;

  CollectionsSortOrderUpdateEvent(this.collectionsSortOrder)
      : super([collectionsSortOrder]);

  @override
  String toString() =>
      'Collections Event: Sort Order Update -> $collectionsSortOrder';
}
