import 'package:freezed_annotation/freezed_annotation.dart';

part 'book.freezed.dart';
part 'book.g.dart';

@freezed
class Book with _$Book {
  factory Book({
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
  }) = _Book;

  factory Book.fromJson(Map<String, dynamic> json) => _$BookFromJson(json);
}
