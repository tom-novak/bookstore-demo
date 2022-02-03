import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validateQuery(String? query) {
  if (query?.isNotEmpty ?? false) {
    return right(query!);
  } else {
    return left(ValueFailure.nullOrEmpty(value: query!));
  }
}
