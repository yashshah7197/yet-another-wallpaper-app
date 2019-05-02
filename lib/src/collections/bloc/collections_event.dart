import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class CollectionsEvent extends Equatable {}

class CollectionsFetchEvent extends CollectionsEvent {
  @override
  String toString() => 'Collections Event: Fetch';
}
