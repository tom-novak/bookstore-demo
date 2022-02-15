import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';

extension BooksReponseX on BooksResponse {
  PagedBooks toPagedBooks() {
    return PagedBooks(
      page: page,
      total: total,
      books: books.map<Book>((bookReponse) => bookReponse.toBook()).toList(),
    );
  }
}
