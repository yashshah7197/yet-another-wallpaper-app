import 'dart:async';

import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/stats/model/total_stats.dart';
import 'package:yet_another_wallpaper_app/src/stats/model/month_stats.dart';
import 'package:yet_another_wallpaper_app/src/stats/service/stats_service.dart';

class StatsRepository {
  final StatsService _statsService;

  StatsRepository(this._statsService) : assert(_statsService != null);

  Future<TotalStats> getTotalStats() async =>
      await _statsService.getTotalStats();

  Future<MonthStats> getMonthStats() async =>
      await _statsService.getMonthStats();
}
