import 'dart:async';

import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

import 'package:yet_another_wallpaper_app/src/stats/model/month_stats.dart';
import 'package:yet_another_wallpaper_app/src/stats/model/total_stats.dart';
import 'package:yet_another_wallpaper_app/src/utils/serializers.dart';

class StatsService {
  final Dio _httpClient;

  StatsService(this._httpClient) : assert(_httpClient != null);

  Future<TotalStats> getTotalStats() async {
    try {
      final response = await _httpClient.get('stats/total');
      return deserialize<TotalStats>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning stats with nulls
      return TotalStats();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return TotalStats();
    }
  }

  Future<MonthStats> getMonthStats() async {
    try {
      final response = await _httpClient.get('stats/month');
      return deserialize<MonthStats>(response.data);
    } on DioError catch (error) {
      // TODO: Handle errors properly instead of returning stats with nulls
      return MonthStats();
    } catch (exception) {
      // TODO: Handle errors apart from network and HTTP errors properly
      return MonthStats();
    }
  }
}
