import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SearchEvent extends Equatable {
  SearchEvent([List props = const []]) : super(props);
}

class SearchPhotosEvent extends SearchEvent {
  final String query;

  SearchPhotosEvent(this.query) : super([query]);

  @override
  String toString() => 'Search Event: Photos Search';
}
