// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'api_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ApiFailureTearOff {
  const _$ApiFailureTearOff();

  _ApiError apiError() {
    return const _ApiError();
  }

  _Unauthorized unauthorized() {
    return const _Unauthorized();
  }

  _Unexpected unexpected() {
    return const _Unexpected();
  }
}

/// @nodoc
const $ApiFailure = _$ApiFailureTearOff();

/// @nodoc
mixin _$ApiFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() apiError,
    required TResult Function() unauthorized,
    required TResult Function() unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiFailureCopyWith<$Res> {
  factory $ApiFailureCopyWith(
          ApiFailure value, $Res Function(ApiFailure) then) =
      _$ApiFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$ApiFailureCopyWithImpl<$Res> implements $ApiFailureCopyWith<$Res> {
  _$ApiFailureCopyWithImpl(this._value, this._then);

  final ApiFailure _value;
  // ignore: unused_field
  final $Res Function(ApiFailure) _then;
}

/// @nodoc
abstract class _$ApiErrorCopyWith<$Res> {
  factory _$ApiErrorCopyWith(_ApiError value, $Res Function(_ApiError) then) =
      __$ApiErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ApiErrorCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$ApiErrorCopyWith<$Res> {
  __$ApiErrorCopyWithImpl(_ApiError _value, $Res Function(_ApiError) _then)
      : super(_value, (v) => _then(v as _ApiError));

  @override
  _ApiError get _value => super._value as _ApiError;
}

/// @nodoc

class _$_ApiError with DiagnosticableTreeMixin implements _ApiError {
  const _$_ApiError();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.apiError()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.apiError'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ApiError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() apiError,
    required TResult Function() unauthorized,
    required TResult Function() unexpected,
  }) {
    return apiError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
  }) {
    return apiError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return apiError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return apiError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (apiError != null) {
      return apiError(this);
    }
    return orElse();
  }
}

abstract class _ApiError implements ApiFailure {
  const factory _ApiError() = _$_ApiError;
}

/// @nodoc
abstract class _$UnauthorizedCopyWith<$Res> {
  factory _$UnauthorizedCopyWith(
          _Unauthorized value, $Res Function(_Unauthorized) then) =
      __$UnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnauthorizedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnauthorizedCopyWith<$Res> {
  __$UnauthorizedCopyWithImpl(
      _Unauthorized _value, $Res Function(_Unauthorized) _then)
      : super(_value, (v) => _then(v as _Unauthorized));

  @override
  _Unauthorized get _value => super._value as _Unauthorized;
}

/// @nodoc

class _$_Unauthorized with DiagnosticableTreeMixin implements _Unauthorized {
  const _$_Unauthorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.unauthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.unauthorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() apiError,
    required TResult Function() unauthorized,
    required TResult Function() unexpected,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements ApiFailure {
  const factory _Unauthorized() = _$_Unauthorized;
}

/// @nodoc
abstract class _$UnexpectedCopyWith<$Res> {
  factory _$UnexpectedCopyWith(
          _Unexpected value, $Res Function(_Unexpected) then) =
      __$UnexpectedCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnexpectedCopyWithImpl<$Res> extends _$ApiFailureCopyWithImpl<$Res>
    implements _$UnexpectedCopyWith<$Res> {
  __$UnexpectedCopyWithImpl(
      _Unexpected _value, $Res Function(_Unexpected) _then)
      : super(_value, (v) => _then(v as _Unexpected));

  @override
  _Unexpected get _value => super._value as _Unexpected;
}

/// @nodoc

class _$_Unexpected with DiagnosticableTreeMixin implements _Unexpected {
  const _$_Unexpected();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ApiFailure.unexpected()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'ApiFailure.unexpected'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Unexpected);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() apiError,
    required TResult Function() unauthorized,
    required TResult Function() unexpected,
  }) {
    return unexpected();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
  }) {
    return unexpected?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? apiError,
    TResult Function()? unauthorized,
    TResult Function()? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ApiError value) apiError,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_Unexpected value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ApiError value)? apiError,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_Unexpected value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class _Unexpected implements ApiFailure {
  const factory _Unexpected() = _$_Unexpected;
}
