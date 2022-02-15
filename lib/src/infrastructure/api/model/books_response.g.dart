// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'books_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BooksResponse _$$_BooksResponseFromJson(Map<String, dynamic> json) =>
    _$_BooksResponse(
      page: json['page'] == null ? 1 : int.parse(json['page'] as String),
      total: json['total'] == null ? 0 : int.parse(json['total'] as String),
      books: (json['books'] as List<dynamic>?)
              ?.map((e) => BookResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$$_BooksResponseToJson(_$_BooksResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total': instance.total,
      'books': instance.books,
    };
