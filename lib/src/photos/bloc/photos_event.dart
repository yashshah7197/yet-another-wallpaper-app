import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:yet_another_wallpaper_app/src/photos/model/photos_sort_order.dart';

@immutable
abstract class PhotosEvent extends Equatable {
  PhotosEvent([List props = const []]) : super(props);
}

class PhotosFetchEvent extends PhotosEvent {
  @override
  String toString() => 'Photos Event: Fetch';
}

class PhotosSortOrderUpdateEvent extends PhotosEvent {
  final PhotosSortOrder photosSortOrder;

  PhotosSortOrderUpdateEvent(this.photosSortOrder) : super([photosSortOrder]);

  @override
  String toString() => 'Photos Event: Sort Order Update';
}
