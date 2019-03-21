// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'month_stats.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$MonthStats extends MonthStats {
  @override
  final int photographerCount;
  @override
  final int photoCount;
  @override
  final int pixelCount;
  @override
  final int viewCount;
  @override
  final int likeCount;
  @override
  final int downloadCount;
  @override
  final int developerCount;
  @override
  final int applicationCount;
  @override
  final int requestCount;

  factory _$MonthStats([void updates(MonthStatsBuilder b)]) =>
      (new MonthStatsBuilder()..update(updates)).build();

  _$MonthStats._(
      {this.photographerCount,
      this.photoCount,
      this.pixelCount,
      this.viewCount,
      this.likeCount,
      this.downloadCount,
      this.developerCount,
      this.applicationCount,
      this.requestCount})
      : super._();

  @override
  MonthStats rebuild(void updates(MonthStatsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MonthStatsBuilder toBuilder() => new MonthStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MonthStats &&
        photographerCount == other.photographerCount &&
        photoCount == other.photoCount &&
        pixelCount == other.pixelCount &&
        viewCount == other.viewCount &&
        likeCount == other.likeCount &&
        downloadCount == other.downloadCount &&
        developerCount == other.developerCount &&
        applicationCount == other.applicationCount &&
        requestCount == other.requestCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, photographerCount.hashCode),
                                    photoCount.hashCode),
                                pixelCount.hashCode),
                            viewCount.hashCode),
                        likeCount.hashCode),
                    downloadCount.hashCode),
                developerCount.hashCode),
            applicationCount.hashCode),
        requestCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MonthStats')
          ..add('photographerCount', photographerCount)
          ..add('photoCount', photoCount)
          ..add('pixelCount', pixelCount)
          ..add('viewCount', viewCount)
          ..add('likeCount', likeCount)
          ..add('downloadCount', downloadCount)
          ..add('developerCount', developerCount)
          ..add('applicationCount', applicationCount)
          ..add('requestCount', requestCount))
        .toString();
  }
}

class MonthStatsBuilder implements Builder<MonthStats, MonthStatsBuilder> {
  _$MonthStats _$v;

  int _photographerCount;
  int get photographerCount => _$this._photographerCount;
  set photographerCount(int photographerCount) =>
      _$this._photographerCount = photographerCount;

  int _photoCount;
  int get photoCount => _$this._photoCount;
  set photoCount(int photoCount) => _$this._photoCount = photoCount;

  int _pixelCount;
  int get pixelCount => _$this._pixelCount;
  set pixelCount(int pixelCount) => _$this._pixelCount = pixelCount;

  int _viewCount;
  int get viewCount => _$this._viewCount;
  set viewCount(int viewCount) => _$this._viewCount = viewCount;

  int _likeCount;
  int get likeCount => _$this._likeCount;
  set likeCount(int likeCount) => _$this._likeCount = likeCount;

  int _downloadCount;
  int get downloadCount => _$this._downloadCount;
  set downloadCount(int downloadCount) => _$this._downloadCount = downloadCount;

  int _developerCount;
  int get developerCount => _$this._developerCount;
  set developerCount(int developerCount) =>
      _$this._developerCount = developerCount;

  int _applicationCount;
  int get applicationCount => _$this._applicationCount;
  set applicationCount(int applicationCount) =>
      _$this._applicationCount = applicationCount;

  int _requestCount;
  int get requestCount => _$this._requestCount;
  set requestCount(int requestCount) => _$this._requestCount = requestCount;

  MonthStatsBuilder();

  MonthStatsBuilder get _$this {
    if (_$v != null) {
      _photographerCount = _$v.photographerCount;
      _photoCount = _$v.photoCount;
      _pixelCount = _$v.pixelCount;
      _viewCount = _$v.viewCount;
      _likeCount = _$v.likeCount;
      _downloadCount = _$v.downloadCount;
      _developerCount = _$v.developerCount;
      _applicationCount = _$v.applicationCount;
      _requestCount = _$v.requestCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MonthStats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MonthStats;
  }

  @override
  void update(void updates(MonthStatsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MonthStats build() {
    final _$result = _$v ??
        new _$MonthStats._(
            photographerCount: photographerCount,
            photoCount: photoCount,
            pixelCount: pixelCount,
            viewCount: viewCount,
            likeCount: likeCount,
            downloadCount: downloadCount,
            developerCount: developerCount,
            applicationCount: applicationCount,
            requestCount: requestCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
