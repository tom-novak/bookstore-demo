import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';

class BookListState {
  final Failure? failure;
  final bool loading;
  final PagedData? data;

  BookListState({
    this.failure,
    this.loading = false,
    this.data,
  });
}
