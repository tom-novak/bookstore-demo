import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

mixin BookStoreApi {
  Future<Either<ApiFailure, PagedData>> search(String query, int? page);

  Future<Either<ApiFailure, PagedData>> newBooks();

  Future<Either<ApiFailure, Book>> book(String bookId);
}
