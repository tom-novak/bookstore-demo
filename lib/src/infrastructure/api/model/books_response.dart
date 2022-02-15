import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'books_response.freezed.dart';

part 'books_response.g.dart';

@freezed
class BooksResponse with _$BooksResponse {
  factory BooksResponse({
    @JsonKey(defaultValue: 1, fromJson: int.parse) required int page,
    @JsonKey(defaultValue: 0, fromJson: int.parse) required int total,
    @JsonKey(defaultValue: <BookResponse>[]) required List<BookResponse> books,
  }) = _BooksResponse;

  factory BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$BooksResponseFromJson(json);
}
