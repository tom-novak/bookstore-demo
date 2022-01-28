import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

class BookStoreMockApi implements BookStoreApi {
  @override
  Future<Either<Failure, Book>> book(String bookId) {
    // TODO: implement book
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PagedData>> newBooks() {
    // TODO: implement newBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PagedData>> search(String query, int? page) {
    // TODO: implement search
    throw UnimplementedError();
  }
}
