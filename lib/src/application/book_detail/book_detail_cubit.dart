import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_detail_cubit.freezed.dart';

part 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  final IBookRepository repository;

  BookDetailCubit({required this.repository})
      : super(BookDetailState.initial());

  void init(Book bookPreview) {
    var isbn = bookPreview.isbn13;
    if (isbn?.isEmpty ?? true) {
      isbn = bookPreview.isbn10;
    }

    if (isbn?.isEmpty ?? true) {
      emit(state.copyWith(
        failureOrSuccessOption: some(left(const DataFailure.unexpected())),
      ));
    } else {
      emit(state.copyWith(isbn: isbn!));
      loadBookDetail();
    }
  }

  void loadBookDetail() async {
    if (state.isbn.isNotEmpty) {
      emit(state.copyWith(isLoading: true));
      await repository.book(bookId: state.isbn).then(
            (response) => response.fold(
              (apiFailure) => emit(
                state.copyWith(
                  isLoading: false,
                  failureOrSuccessOption: some(left(const DataFailure.unexpected())),
                ),
              ),
              (result) => emit(
                state.copyWith(
                  isLoading: false,
                  failureOrSuccessOption: some(right(result)),
                ),
              ),
            ),
          );
    } else {
      emit(
        state.copyWith(
          failureOrSuccessOption: some(left(const DataFailure.unexpected())),
        ),
      );
    }
  }
}
