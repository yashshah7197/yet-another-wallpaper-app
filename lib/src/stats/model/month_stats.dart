import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'month_stats.g.dart';

abstract class MonthStats implements Built<MonthStats, MonthStatsBuilder> {
  static Serializer<MonthStats> get serializer => _$monthStatsSerializer;

  @nullable
  @BuiltValueField(wireName: 'new_photographers')
  int get photographerCount;

  @nullable
  @BuiltValueField(wireName: 'new_photos')
  int get photoCount;

  @nullable
  @BuiltValueField(wireName: 'new_pixels')
  int get pixelCount;

  @nullable
  @BuiltValueField(wireName: 'views')
  int get viewCount;

  @nullable
  @BuiltValueField(wireName: 'likes')
  int get likeCount;

  @nullable
  @BuiltValueField(wireName: 'downloads')
  int get downloadCount;

  @nullable
  @BuiltValueField(wireName: 'new_developers')
  int get developerCount;

  @nullable
  @BuiltValueField(wireName: 'new_applications')
  int get applicationCount;

  @nullable
  @BuiltValueField(wireName: 'new_requests')
  int get requestCount;

  MonthStats._();

  factory MonthStats([updates(MonthStatsBuilder b)]) = _$MonthStats;
}
