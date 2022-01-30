import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

/// Source of books for presentation layer
/// Here is area not only for call rest api's but for caching too,
/// calling another remote source etc.
class BookRepository {
  final BookStoreApi bookApi;

  BookRepository({
    required this.bookApi,
  });

  Future<Either<ApiFailure, PagedData>> search(
      {required String query, int? page}) async {
    return bookApi.search(query, page);
  }

  Future<Either<ApiFailure, PagedData>> newBooks() async {
    return bookApi.newBooks();
  }

  Future<Either<ApiFailure, Book>> book({required String bookId}) async {
    return bookApi.book(bookId);
  }
}
