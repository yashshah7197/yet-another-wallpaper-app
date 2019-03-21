import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'total_stats.g.dart';

abstract class TotalStats implements Built<TotalStats, TotalStatsBuilder> {
  static Serializer<TotalStats> get serializer => _$totalStatsSerializer;

  @nullable
  @BuiltValueField(wireName: 'photographers')
  int get photographerCount;

  @nullable
  @BuiltValueField(wireName: 'photos')
  int get photoCount;

  @nullable
  @BuiltValueField(wireName: 'pixels')
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
  @BuiltValueField(wireName: 'views_per_second')
  int get viewsPerSecondCount;

  @nullable
  @BuiltValueField(wireName: 'downloads_per_second')
  int get downloadsPerSecondCount;

  @nullable
  @BuiltValueField(wireName: 'developers')
  int get developerCount;

  @nullable
  @BuiltValueField(wireName: 'applications')
  int get applicationCount;

  @nullable
  @BuiltValueField(wireName: 'requests')
  int get requestCount;

  TotalStats._();

  factory TotalStats([updates(TotalStatsBuilder b)]) = _$TotalStats;
}
