// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookDetailStateTearOff {
  const _$BookDetailStateTearOff();

  _BookDetailState call(
      {required bool isLoading,
      required String isbn,
      required Option<Either<Failure, Book>> failureOrSuccessOption}) {
    return _BookDetailState(
      isLoading: isLoading,
      isbn: isbn,
      failureOrSuccessOption: failureOrSuccessOption,
    );
  }
}

/// @nodoc
const $BookDetailState = _$BookDetailStateTearOff();

/// @nodoc
mixin _$BookDetailState {
  bool get isLoading => throw _privateConstructorUsedError;
  String get isbn => throw _privateConstructorUsedError;
  Option<Either<Failure, Book>> get failureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookDetailStateCopyWith<BookDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookDetailStateCopyWith<$Res> {
  factory $BookDetailStateCopyWith(
          BookDetailState value, $Res Function(BookDetailState) then) =
      _$BookDetailStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      String isbn,
      Option<Either<Failure, Book>> failureOrSuccessOption});
}

/// @nodoc
class _$BookDetailStateCopyWithImpl<$Res>
    implements $BookDetailStateCopyWith<$Res> {
  _$BookDetailStateCopyWithImpl(this._value, this._then);

  final BookDetailState _value;
  // ignore: unused_field
  final $Res Function(BookDetailState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isbn = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Book>>,
    ));
  }
}

/// @nodoc
abstract class _$BookDetailStateCopyWith<$Res>
    implements $BookDetailStateCopyWith<$Res> {
  factory _$BookDetailStateCopyWith(
          _BookDetailState value, $Res Function(_BookDetailState) then) =
      __$BookDetailStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      String isbn,
      Option<Either<Failure, Book>> failureOrSuccessOption});
}

/// @nodoc
class __$BookDetailStateCopyWithImpl<$Res>
    extends _$BookDetailStateCopyWithImpl<$Res>
    implements _$BookDetailStateCopyWith<$Res> {
  __$BookDetailStateCopyWithImpl(
      _BookDetailState _value, $Res Function(_BookDetailState) _then)
      : super(_value, (v) => _then(v as _BookDetailState));

  @override
  _BookDetailState get _value => super._value as _BookDetailState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? isbn = freezed,
    Object? failureOrSuccessOption = freezed,
  }) {
    return _then(_BookDetailState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isbn: isbn == freezed
          ? _value.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      failureOrSuccessOption: failureOrSuccessOption == freezed
          ? _value.failureOrSuccessOption
          : failureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Book>>,
    ));
  }
}

/// @nodoc

class _$_BookDetailState implements _BookDetailState {
  const _$_BookDetailState(
      {required this.isLoading,
      required this.isbn,
      required this.failureOrSuccessOption});

  @override
  final bool isLoading;
  @override
  final String isbn;
  @override
  final Option<Either<Failure, Book>> failureOrSuccessOption;

  @override
  String toString() {
    return 'BookDetailState(isLoading: $isLoading, isbn: $isbn, failureOrSuccessOption: $failureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookDetailState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.isbn, isbn) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccessOption, failureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(isbn),
      const DeepCollectionEquality().hash(failureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BookDetailStateCopyWith<_BookDetailState> get copyWith =>
      __$BookDetailStateCopyWithImpl<_BookDetailState>(this, _$identity);
}

abstract class _BookDetailState implements BookDetailState {
  const factory _BookDetailState(
          {required bool isLoading,
          required String isbn,
          required Option<Either<Failure, Book>> failureOrSuccessOption}) =
      _$_BookDetailState;

  @override
  bool get isLoading;
  @override
  String get isbn;
  @override
  Option<Either<Failure, Book>> get failureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$BookDetailStateCopyWith<_BookDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
