import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_books.freezed.dart';

@freezed
class PagedBooks with _$PagedBooks {
  factory PagedBooks({
    required int page,
    required int total,
    required List<Book> books,
  }) = _PagedBooks;
}
