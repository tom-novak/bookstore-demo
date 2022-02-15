import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_response.freezed.dart';
part 'book_response.g.dart';

@freezed
class BookResponse with _$BookResponse {
  factory BookResponse({
    String? error,
    String? title,
    String? subtitle,
    String? authors,
    String? publisher,
    String? isbn10,
    String? isbn13,
    String? pages,
    String? year,
    String? rating,
    String? description,
    String? price,
    String? image,
    String? url,
    Map<String, String>? pdf,
  }) = _BookResponse;

  factory BookResponse.fromJson(Map<String, dynamic> json) => _$BookResponseFromJson(json);
}
