import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab.dart';
import 'package:yet_another_wallpaper_app/src/home/bloc/app_tab_event.dart';

class AppTabBloc extends Bloc<AppTabEvent, AppTab> {
  @override
  AppTab get initialState => AppTab.photos;

  @override
  Stream<AppTab> mapEventToState(AppTabEvent currentEvent) async* {
    if (currentEvent is AppTabUpdateEvent) {
      yield currentEvent.appTab;
    }
  }
}
