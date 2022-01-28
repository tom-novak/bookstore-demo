part of 'book_list_cubit.dart';

@freezed
abstract class BookListState with _$BookListState {
  const factory BookListState({
    required bool isLoading,
    required List<Book> books,
    required Option<Either<Failure, Unit>> failureOrSuccess,
  }) = _BookListState;

  factory BookListState.initial() => BookListState(
        isLoading: false,
        books: <Book>[],
        failureOrSuccess: none(),
      );
}
