import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class PhotosEvent extends Equatable {}

class PhotosFetchEvent extends PhotosEvent {
  @override
  String toString() => 'Photos Event: Fetch';
}
