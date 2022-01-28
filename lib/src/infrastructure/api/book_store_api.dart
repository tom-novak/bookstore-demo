import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

mixin BookStoreApi {
  Future<Either<Failure, PagedData>> search(String query, int? page);

  Future<Either<Failure, PagedData>> newBooks();

  Future<Either<Failure, Book>> book(String bookId);
}
