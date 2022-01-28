import 'package:bookstore_demo/src/infrastructure/book_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'book_detail_state.dart';

class BookDetailCubit extends Cubit<BookDetailState> {
  final BookRepository repository;

  BookDetailCubit({required this.repository})
      : super(BookDetailState(loading: false));

  void loadBookDetail(String bookId) async {
    var result = await repository.book(bookId);
    result.fold(
      (l) => emit(BookDetailState(failure: l)),
      (r) => null,
    );
  }
}
