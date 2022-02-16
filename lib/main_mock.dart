import 'package:bookstore_demo/src/bookstore_app.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/api/book_store_api.dart';
import 'package:bookstore_demo/src/infrastructure/api/mock/book_store_mock_api.dart';
import 'package:bookstore_demo/src/infrastructure/book_repository.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerFactory<BookStoreApi>(() => BookStoreMockApi());
  getIt.registerFactory<IBookRepository>(
      () => BookRepository(bookApi: getIt.get<BookStoreApi>()));

  runApp(const BookStoreApp());
}
