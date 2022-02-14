import 'package:bookstore_demo/src/domain/domain.dart';
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

  void search(SearchQuery query) {
    emit(state.copyWith(query: query));
    refresh();
  }

  void refresh() {
    if (state.isLoading) {
      return;
    }

    state.query.value.fold(
      (queryFailure) => null,
      (query) {
        emit(state.copyWith(isLoading: true, failureOrSuccessOption: none()));
        repository.search(query: query).then(
              (response) => response.fold(
                (dataFailure) => emit(
                  state.copyWith(
                    isLoading: false,
                    failureOrSuccessOption: some(
                      left(const DataFailure.unexpected()),
                    ),
                  ),
                ),
                (data) => emit(
                  state.copyWith(
                    isLoading: false,
                    failureOrSuccessOption: some(right(data)),
                  ),
                ),
              ),
            );
      },
    );
  }

  void loadNext() {
    if (state.isLoading) {
      return;
    }

    state.query.value.fold(
      (queryFailure) => null,
      (query) => state.failureOrSuccessOption.fold(
        () => null,
        (failureOrSuccess) => failureOrSuccess.fold(
          (dataFailure) => null,
          (data) {
            if (data.books.length < data.total) {
              emit(state.copyWith(isLoading: true));
              repository.search(query: query, page: data.page + 1).then(
                    (response) => response.fold(
                      // TODO process api failure ??
                      (apiFailure) => emit(state.copyWith(isLoading: false)),
                      (apiData) {
                        emit(
                          state.copyWith(
                            isLoading: false,
                            failureOrSuccessOption: some(
                              right(
                                PagedData(
                                  page: apiData.page,
                                  total: apiData.total,
                                  books: data.books + apiData.books,
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  );
            }
          },
        ),
      ),
    );
  }
}
