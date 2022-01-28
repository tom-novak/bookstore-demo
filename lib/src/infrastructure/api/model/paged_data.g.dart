// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paged_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PagedData _$$_PagedDataFromJson(Map<String, dynamic> json) => _$_PagedData(
      page: json['page'] as String,
      total: json['total'] as String,
      books: (json['books'] as List<dynamic>)
          .map((e) => Book.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PagedDataToJson(_$_PagedData instance) =>
    <String, dynamic>{
      'page': instance.page,
      'total': instance.total,
      'books': instance.books,
    };
