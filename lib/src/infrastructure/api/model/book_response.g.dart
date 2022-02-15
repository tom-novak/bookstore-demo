// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BookResponse _$$_BookResponseFromJson(Map<String, dynamic> json) =>
    _$_BookResponse(
      error: json['error'] as String?,
      title: json['title'] as String?,
      subtitle: json['subtitle'] as String?,
      authors: json['authors'] as String?,
      publisher: json['publisher'] as String?,
      isbn10: json['isbn10'] as String?,
      isbn13: json['isbn13'] as String?,
      pages: json['pages'] as String?,
      year: json['year'] as String?,
      rating: json['rating'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      image: json['image'] as String?,
      url: json['url'] as String?,
      pdf: (json['pdf'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
    );

Map<String, dynamic> _$$_BookResponseToJson(_$_BookResponse instance) =>
    <String, dynamic>{
      'error': instance.error,
      'title': instance.title,
      'subtitle': instance.subtitle,
      'authors': instance.authors,
      'publisher': instance.publisher,
      'isbn10': instance.isbn10,
      'isbn13': instance.isbn13,
      'pages': instance.pages,
      'year': instance.year,
      'rating': instance.rating,
      'description': instance.description,
      'price': instance.price,
      'image': instance.image,
      'url': instance.url,
      'pdf': instance.pdf,
    };
