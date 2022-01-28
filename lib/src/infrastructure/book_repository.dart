import 'package:bookstore_demo/src/application/application.dart';
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

  Future<Either<Failure, PagedData>> search(String query, int? page) async {
    var result = await bookApi.search(query, page);
    return Future.delayed(const Duration(milliseconds: 700));
  }

  Future<Either<Failure, PagedData>> newBooks() async {
    return Future.delayed(const Duration(milliseconds: 700));
  }

  Future<Either<Failure, PagedData>> book(String bookId) async {
    return Future.delayed(const Duration(milliseconds: 700));
  }
}
