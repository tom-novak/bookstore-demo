import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/api/model/book_response.dart';

extension BookReponseX on BookResponse {
  Book toBook() {
    return Book(
      title: title,
      subtitle: subtitle,
      authors: authors,
      publisher: publisher,
      isbn10: isbn10,
      isbn13: isbn13,
      pages: pages,
      year: year,
      rating: rating,
      description: description,
      price: price,
      image: image,
      url: url,
      pdf: pdf,
    );
  }
}
