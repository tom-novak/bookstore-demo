import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';

@freezed
class Book with _$Book {
  factory Book({
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
  }) = _Book;
}
