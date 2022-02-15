import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

mixin BookStoreApi {
  Future<Either<ApiFailure, BooksResponse>> search(String query, int? page);

  Future<Either<ApiFailure, BooksResponse>> newBooks();

  Future<Either<ApiFailure, BookResponse>> book(String bookId);
}
