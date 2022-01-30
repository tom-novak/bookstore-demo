part of 'book_list_cubit.dart';

@freezed
class BookListState with _$BookListState {
  const factory BookListState({
    required bool isLoading,
    required String query,
    required PagedData data,
    required Option<Either<ApiFailure, Unit>> failureOrSuccess,
  }) = _BookListState;

  factory BookListState.initial() => BookListState(
        isLoading: false,
        query: '',
        data: PagedData(
          page: '1',
          total: '0',
          books: <Book>[],
        ),
        failureOrSuccess: none(),
      );
}
