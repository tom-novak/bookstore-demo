import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:dartz/dartz.dart';

class SearchQuery extends ValueObject<String> {

  @override
  final Either<ValueFailure<String>, String> value;

  factory SearchQuery(String? query) {
    assert(query != null);
    return SearchQuery._(validateQuery(query));
  }

  const SearchQuery._(this.value);
}
