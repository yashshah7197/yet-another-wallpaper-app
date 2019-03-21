import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'search_result.g.dart';

abstract class SearchResult<T>
    implements Built<SearchResult<T>, SearchResultBuilder<T>> {
  @nullable
  @BuiltValueField(wireName: 'total')
  int get resultCount;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get pageCount;

  @nullable
  BuiltList<T> get results;

  SearchResult._();

  factory SearchResult([updates(SearchResultBuilder<T> b)]) = _$SearchResult<T>;
}
