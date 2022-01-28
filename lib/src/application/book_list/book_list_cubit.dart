import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/book_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_list_cubit.freezed.dart';

part 'book_list_state.dart';

class BookListCubit extends Cubit<BookListState> {
  final BookRepository repository;

  BookListCubit({
    required this.repository,
  }) : super(BookListState.initial());

  void search(String query) async {
    emit(state.copyWith(isLoading: true, books: <Book>[]));
    var result = await repository.search(query, 0);
    emit(state.copyWith(isLoading: false, books: <Book>[]));
  }
}
