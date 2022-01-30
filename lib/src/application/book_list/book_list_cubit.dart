import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
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
    emit(state.copyWith(
      isLoading: true,
      failureOrSuccess: none(),
      query: query,
      data: PagedData(
        page: '1',
        total: '0',
        books: <Book>[],
      ),
    ));
    repository.search(query: query, page: 1).then(
          (result) => result.fold(
            (l) => emit(state.copyWith(isLoading: false)),
            (r) => emit(state.copyWith(isLoading: false, data: r)),
          ),
        );
  }

  void loadNext() {
    emit(state.copyWith(isLoading: true));
    if (state.query.isNotEmpty &&
        int.parse(state.data.page) < int.parse(state.data.total)) {
      repository
          .search(
            query: state.query,
            page: int.parse(state.data.page) + 1,
          )
          .then(
            (value) => value.fold(
              (l) => emit(state.copyWith(isLoading: false)),
              (r) => emit(state.copyWith(
                isLoading: false,
                data: PagedData(
                    page: r.page,
                    total: r.total,
                    books: state.data.books + r.books),
              )),
            ),
          );
    }
  }
}
