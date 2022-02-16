import 'package:bookstore_demo/src/domain/domain.dart';

extension BookX on Book {
  String get isbn {
    if (isbn13?.isNotEmpty ?? false) {
      return isbn13!;
    }

    if (isbn10?.isNotEmpty ?? false) {
      return isbn10!;
    }

    return '';
  }
}