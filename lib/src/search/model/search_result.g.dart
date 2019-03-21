// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SearchResult<T> extends SearchResult<T> {
  @override
  final int resultCount;
  @override
  final int pageCount;
  @override
  final BuiltList<T> results;

  factory _$SearchResult([void updates(SearchResultBuilder<T> b)]) =>
      (new SearchResultBuilder<T>()..update(updates)).build();

  _$SearchResult._({this.resultCount, this.pageCount, this.results})
      : super._() {
    if (T == dynamic) {
      throw new BuiltValueMissingGenericsError('SearchResult', 'T');
    }
  }

  @override
  SearchResult<T> rebuild(void updates(SearchResultBuilder<T> b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchResultBuilder<T> toBuilder() =>
      new SearchResultBuilder<T>()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchResult &&
        resultCount == other.resultCount &&
        pageCount == other.pageCount &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, resultCount.hashCode), pageCount.hashCode),
        results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchResult')
          ..add('resultCount', resultCount)
          ..add('pageCount', pageCount)
          ..add('results', results))
        .toString();
  }
}

class SearchResultBuilder<T>
    implements Builder<SearchResult<T>, SearchResultBuilder<T>> {
  _$SearchResult<T> _$v;

  int _resultCount;
  int get resultCount => _$this._resultCount;
  set resultCount(int resultCount) => _$this._resultCount = resultCount;

  int _pageCount;
  int get pageCount => _$this._pageCount;
  set pageCount(int pageCount) => _$this._pageCount = pageCount;

  ListBuilder<T> _results;
  ListBuilder<T> get results => _$this._results ??= new ListBuilder<T>();
  set results(ListBuilder<T> results) => _$this._results = results;

  SearchResultBuilder();

  SearchResultBuilder<T> get _$this {
    if (_$v != null) {
      _resultCount = _$v.resultCount;
      _pageCount = _$v.pageCount;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchResult<T> other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SearchResult<T>;
  }

  @override
  void update(void updates(SearchResultBuilder<T> b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchResult<T> build() {
    _$SearchResult<T> _$result;
    try {
      _$result = _$v ??
          new _$SearchResult<T>._(
              resultCount: resultCount,
              pageCount: pageCount,
              results: _results?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        _results?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
