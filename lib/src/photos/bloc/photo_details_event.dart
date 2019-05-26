import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PhotoDetailsEvent extends Equatable {
  PhotoDetailsEvent([List props = const []]) : super(props);
}

class PhotoDetailsFetchEvent extends PhotoDetailsEvent {
  final String photoId;

  PhotoDetailsFetchEvent(this.photoId) : super([photoId]);

  @override
  String toString() => 'Photo Details Event: Fetch';
}
