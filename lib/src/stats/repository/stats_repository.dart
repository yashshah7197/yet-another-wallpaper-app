import 'dart:async';

import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/stats/model/total_stats.dart';
import 'package:yet_another_wallpaper_app/src/stats/model/month_stats.dart';
import 'package:yet_another_wallpaper_app/src/stats/service/stats_service.dart';

class StatsRepository {
  final StatsService statsService;

  StatsRepository({@required this.statsService}) : assert(statsService != null);

  Future<TotalStats> getTotalStats() async =>
      await statsService.getTotalStats();

  Future<MonthStats> getMonthStats() async =>
      await statsService.getMonthStats();
}
