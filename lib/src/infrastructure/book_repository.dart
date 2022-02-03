import 'package:bookstore_demo/src/domain/i_book_repository.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

/// Source of books for presentation layer
/// Here is area not only for call rest api's but for caching too,
/// calling another remote source etc.
class BookRepository implements IBookRepository {
  final BookStoreApi bookApi;

  BookRepository({
    required this.bookApi,
  });

  @override
  Future<Either<ApiFailure, PagedData>> search(
      {required String query, int? page}) async {
    return bookApi.search(query, page);
  }

  @override
  Future<Either<ApiFailure, PagedData>> newBooks() async {
    return bookApi.newBooks();
  }

  @override
  Future<Either<ApiFailure, Book>> book({required String bookId}) async {
    return bookApi.book(bookId);
  }
}
