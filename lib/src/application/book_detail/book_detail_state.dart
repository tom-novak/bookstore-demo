import 'package:bookstore_demo/src/application/failure.dart';
import 'package:bookstore_demo/src/domain/domain.dart';

class BookDetailState {
  final bool loading;
  final Book? data;
  final Failure? failure;

  BookDetailState({
    this.loading = false,
    this.data,
    this.failure,
  });
}
