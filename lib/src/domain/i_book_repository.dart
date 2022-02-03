import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

abstract class IBookRepository {
  Future<Either<ApiFailure, PagedData>> search(
      {required String query, int? page});

  Future<Either<ApiFailure, PagedData>> newBooks();

  Future<Either<ApiFailure, Book>> book({required String bookId});
}