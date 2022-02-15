import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:dartz/dartz.dart';

class BookStoreMockApi implements BookStoreApi {
  @override
  Future<Either<ApiFailure, BookResponse>> book(String bookId) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return right(
      BookResponse(
        isbn10: bookId,
        isbn13: bookId,
        title: 'Lorem Ipsum',
        subtitle: 'Lorem ipsum dolor',
        description: 'Lorem ipsum dolor sit amet.',
      ),
    );
  }

  @override
  Future<Either<ApiFailure, BooksResponse>> newBooks() {
    // TODO: implement newBooks
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiFailure, BooksResponse>> search(String query, int? page) async {
    await Future.delayed(const Duration(milliseconds: 500));
    return right(
      BooksResponse(
        page: page ?? 1,
        total: 10,
        books: <BookResponse>[
          BookResponse(
            isbn10: '1234567890',
            isbn13: '1234567890123',
            title: 'Lorem Ipsum',
            subtitle: 'Lorem ipsum dolor',
            description: 'Lorem ipsum dolor sit amet.',
          ),
          BookResponse(
            isbn10: '1234567890',
            isbn13: '1234567890123',
            title: 'Lorem Ipsum',
            subtitle: 'Lorem ipsum dolor',
            description: 'Lorem ipsum dolor sit amet.',
          ),
        ],
      ),
    );
  }
}
