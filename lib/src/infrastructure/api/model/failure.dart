import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.apiError() = _ApiError;
  const factory Failure.unauthorized() = _Unauthorized;
  const factory Failure.unexpected() = _Unexpected;
}
