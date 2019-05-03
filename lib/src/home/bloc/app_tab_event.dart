import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab.dart';

@immutable
abstract class AppTabEvent extends Equatable {
  AppTabEvent([List props = const []]) : super(props);
}

class AppTabUpdateEvent extends AppTabEvent {
  final AppTab appTab;

  AppTabUpdateEvent(this.appTab) : super([appTab]);

  @override
  String toString() => 'AppTab Event: Update';
}
