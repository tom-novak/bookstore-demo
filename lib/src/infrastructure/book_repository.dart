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

  Future<Either<Failure, PagedData>> search(
      {required String query, int? page}) async {
    return bookApi.search(query, page);
  }

  Future<Either<Failure, PagedData>> newBooks() async {
    return Future.delayed(const Duration(milliseconds: 700));
  }

  Future<Either<Failure, PagedData>> book({required String bookId}) async {
    return Future.delayed(const Duration(milliseconds: 700));
  }
}
