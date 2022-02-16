import 'package:bookstore_demo/src/bookstore_app.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/api/api_constants.dart';
import 'package:bookstore_demo/src/infrastructure/api/book_store_api.dart';
import 'package:bookstore_demo/src/infrastructure/api/rest/book_store_rest_api.dart';
import 'package:bookstore_demo/src/infrastructure/book_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.instance;
  Dio dio = Dio(BaseOptions(baseUrl: kApiUrl));
  getIt.registerFactory<BookStoreApi>(() => BookStoreRestApi(dio: dio));
  getIt.registerFactory<IBookRepository>(
      () => BookRepository(bookApi: getIt.get<BookStoreApi>()));

  runApp(const BookStoreApp());
}
