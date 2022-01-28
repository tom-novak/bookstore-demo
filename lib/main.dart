import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/api/api_constants.dart';
import 'package:bookstore_demo/src/infrastructure/api/book_store_api.dart';
import 'package:bookstore_demo/src/infrastructure/api/rest/book_store_rest_api.dart';
import 'package:bookstore_demo/src/infrastructure/book_repository.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;
Dio dio = Dio(BaseOptions(baseUrl: kApiUrl));

void main() {
  getIt.registerFactory<BookStoreApi>(() => BookStoreRestApi(dio: dio));
  getIt.registerFactory<BookRepository>(
      () => BookRepository(bookApi: getIt.get<BookStoreApi>()));

  getIt.registerFactory<BookListCubit>(
      () => BookListCubit(repository: getIt.get<BookRepository>()));
  getIt.registerFactory<BookDetailCubit>(
      () => BookDetailCubit(repository: getIt.get<BookRepository>()));

  runApp(const BookStoreApp());
}

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BookListScreen(
        cubit: getIt.get<BookListCubit>(),
      ),
    );
  }
}
