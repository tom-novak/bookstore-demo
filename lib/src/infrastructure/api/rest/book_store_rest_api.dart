import 'package:bookstore_demo/src/application/failure.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookStoreRestApi implements BookStoreApi {
  final Dio dio;

  BookStoreRestApi({
    required this.dio,
  });

  @override
  Future<Either<Failure, Book>> book(String bookId) async {
    // TODO: implement book
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PagedData>> newBooks() async {
    // TODO: implement newBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, PagedData>> search(String query, int? page) async {
    var result = await dio.get('search/$query');
    switch (result.statusCode) {
      case 200:
        return right(PagedData(
          page: page ?? 0,
          total: 20,
          data: <Book>[],
        ));
      default:
        return left(const Failure());
    }
  }
}
