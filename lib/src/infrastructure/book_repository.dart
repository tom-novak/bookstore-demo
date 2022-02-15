import 'package:bookstore_demo/src/domain/domain.dart';
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
  Future<Either<DataFailure, PagedBooks>> search(
      {required String query, int? page}) async {
    return bookApi.search(query, page).then(
          (value) => value.fold(
            (apiFailure) => left(apiFailure.toDataFailure()),
            (data) => right(data.toPagedBooks()),
          ),
        );
  }

  @override
  Future<Either<DataFailure, PagedBooks>> newBooks() async {
    return bookApi.newBooks().then(
          (response) => response.fold(
            (apiFailure) => left(apiFailure.toDataFailure()),
            (data) => right(data.toPagedBooks()),
          ),
        );
  }

  @override
  Future<Either<DataFailure, Book>> book({required String bookId}) async {
    return bookApi.book(bookId).then(
          (value) => value.fold(
            (l) => left(l.toDataFailure()),
            (r) => right(r.toBook()),
          ),
        );
  }
}
