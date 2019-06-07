import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DownloadState extends Equatable {
  DownloadState([List props = const []]) : super(props);
}

class DownloadEmptyState extends DownloadState {
  @override
  String toString() => 'Download State: Empty';
}

class DownloadInProgressState extends DownloadState {
  @override
  String toString() => 'Download State: In Progress';
}

class DownloadCompletedState extends DownloadState {
  final List<int> bytes;

  DownloadCompletedState(this.bytes) : super([bytes]);

  @override
  String toString() => 'Download State: Completed';
}

class DownloadErrorState extends DownloadState {
  @override
  String toString() => 'Download State: Error';
}
