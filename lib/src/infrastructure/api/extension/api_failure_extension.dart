import 'package:bookstore_demo/src/domain/data_failure.dart';
import 'package:bookstore_demo/src/infrastructure/api/model/api_failure.dart';

extension ApiFailureX on ApiFailure {
  DataFailure toDataFailure() {
    return const DataFailure.unexpected();
  }
}