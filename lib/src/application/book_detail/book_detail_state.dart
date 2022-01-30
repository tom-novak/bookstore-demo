part of 'book_detail_cubit.dart';

@freezed
class BookDetailState with _$BookDetailState {
  const factory BookDetailState({
    required bool isLoading,
    required String isbn,
    required Option<Either<Failure, Book>> failureOrSuccessOption,
  }) = _BookDetailState;

  factory BookDetailState.initial() => BookDetailState(
    isbn: '',
    isLoading: false,
    failureOrSuccessOption: none(),
  );
}
