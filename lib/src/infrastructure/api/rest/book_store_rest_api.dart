import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class BookStoreRestApi implements BookStoreApi {
  final Dio dio;

  BookStoreRestApi({
    required this.dio,
  });

  @override
  Future<Either<ApiFailure, Book>> book(String isbn) async {
    var response = await dio.get('books/$isbn');
    return processResponse(
      response: response,
      dataBuilder: (data) => Book.fromJson(data),
    );
  }

  @override
  Future<Either<ApiFailure, PagedData>> newBooks() async {
    var response = await dio.get('new');
    return processResponse(
      response: response,
      dataBuilder: (data) => PagedData.fromJson(data),
    );
  }

  @override
  Future<Either<ApiFailure, PagedData>> search(String query, int? page) async {
    var pageUrlPart = page == null ? '' : '/$page';
    var response = await dio.get('search/$query$pageUrlPart');
    return processResponse<PagedData>(
      response: response,
      dataBuilder: (data) => PagedData.fromJson(data),
    );
  }

  Either<ApiFailure, T> processResponse<T>({
    required Response response,
    required T Function(Map<String, Object?>) dataBuilder,
  }) {
    if (response.statusCode == null) {
      return left(const ApiFailure.unexpected());
    }

    if (response.statusCode! >= 200 && response.statusCode! < 300) {
      return right(dataBuilder(response.data));
    } else {
      switch (response.statusCode) {
        case 401:
          return left(const ApiFailure.unauthorized());
        case 404:
          return left(const ApiFailure.apiError());
        case 500:
          return left(const ApiFailure.apiError());
        default:
          return left(const ApiFailure.unexpected());
      }
    }
  }
}
