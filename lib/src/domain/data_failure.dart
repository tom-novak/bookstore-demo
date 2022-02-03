import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'data_failure.freezed.dart';

@freezed
class DataFailure with _$DataFailure {
  const factory DataFailure.unexpected() = _Unexpected;
}
