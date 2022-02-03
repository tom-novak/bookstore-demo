part of 'book_list_cubit.dart';

@freezed
class BookListState with _$BookListState {
  const factory BookListState({
    required bool isLoading,
    required SearchQuery query,
    required Option<Either<DataFailure, PagedData>> failureOrSuccessOption,
  }) = _BookListState;

  factory BookListState.initial() => BookListState(
        isLoading: false,
        query: SearchQuery(''),
        failureOrSuccessOption: none(),
      );
}
