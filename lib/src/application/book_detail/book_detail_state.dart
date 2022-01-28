part of 'book_detail_cubit.dart';

@freezed
class BookDetailState with _$BookDetailState {
  const factory BookDetailState({
    required bool isLoading,
    Book? book,
    required Option<Either<Failure, Unit>> failureOrSuccess,
  }) = _BookDetailState;

  factory BookDetailState.initial() => BookDetailState(
    isLoading: false,
    failureOrSuccess: none(),
  );
}
