import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure() = _Failure;

  factory Failure.fromJson(Map<String, Object?> json) =>
      _$FailureFromJson(json);
}
