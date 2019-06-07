import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DownloadEvent extends Equatable {
  DownloadEvent([List props = const []]) : super(props);
}

class DownloadStartEvent extends DownloadEvent {
  final String downloadUrl;

  DownloadStartEvent(this.downloadUrl) : super([downloadUrl]);

  @override
  String toString() => 'Download Event: Start';
}
