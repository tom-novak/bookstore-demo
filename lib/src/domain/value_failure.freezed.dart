// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'value_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

  NullOrEmpty<T> nullOrEmpty<T>({required T value}) {
    return NullOrEmpty<T>(
      value: value,
    );
  }
}

/// @nodoc
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  T get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty<T> value) nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NullOrEmpty<T> value)? nullOrEmpty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty<T> value)? nullOrEmpty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValueFailureCopyWith<T, ValueFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
  $Res call({T value});
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
abstract class $NullOrEmptyCopyWith<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  factory $NullOrEmptyCopyWith(
          NullOrEmpty<T> value, $Res Function(NullOrEmpty<T>) then) =
      _$NullOrEmptyCopyWithImpl<T, $Res>;
  @override
  $Res call({T value});
}

/// @nodoc
class _$NullOrEmptyCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $NullOrEmptyCopyWith<T, $Res> {
  _$NullOrEmptyCopyWithImpl(
      NullOrEmpty<T> _value, $Res Function(NullOrEmpty<T>) _then)
      : super(_value, (v) => _then(v as NullOrEmpty<T>));

  @override
  NullOrEmpty<T> get _value => super._value as NullOrEmpty<T>;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(NullOrEmpty<T>(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NullOrEmpty<T> implements NullOrEmpty<T> {
  const _$NullOrEmpty({required this.value});

  @override
  final T value;

  @override
  String toString() {
    return 'ValueFailure<$T>.nullOrEmpty(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NullOrEmpty<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  $NullOrEmptyCopyWith<T, NullOrEmpty<T>> get copyWith =>
      _$NullOrEmptyCopyWithImpl<T, NullOrEmpty<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T value) nullOrEmpty,
  }) {
    return nullOrEmpty(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T value)? nullOrEmpty,
  }) {
    return nullOrEmpty?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NullOrEmpty<T> value) nullOrEmpty,
  }) {
    return nullOrEmpty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NullOrEmpty<T> value)? nullOrEmpty,
  }) {
    return nullOrEmpty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NullOrEmpty<T> value)? nullOrEmpty,
    required TResult orElse(),
  }) {
    if (nullOrEmpty != null) {
      return nullOrEmpty(this);
    }
    return orElse();
  }
}

abstract class NullOrEmpty<T> implements ValueFailure<T> {
  const factory NullOrEmpty({required T value}) = _$NullOrEmpty<T>;

  @override
  T get value;
  @override
  @JsonKey(ignore: true)
  $NullOrEmptyCopyWith<T, NullOrEmpty<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
