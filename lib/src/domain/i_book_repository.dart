import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:dartz/dartz.dart';

abstract class IBookRepository {
  Future<Either<DataFailure, PagedBooks>> search(
      {required String query, int? page});

  Future<Either<DataFailure, PagedBooks>> newBooks();

  Future<Either<DataFailure, Book>> book({required String bookId});
}