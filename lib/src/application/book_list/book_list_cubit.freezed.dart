// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'book_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$BookListStateTearOff {
  const _$BookListStateTearOff();

  _BookListState call(
      {required bool isLoading,
      required List<Book> books,
      required Option<Either<Failure, Unit>> failureOrSuccess}) {
    return _BookListState(
      isLoading: isLoading,
      books: books,
      failureOrSuccess: failureOrSuccess,
    );
  }
}

/// @nodoc
const $BookListState = _$BookListStateTearOff();

/// @nodoc
mixin _$BookListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;
  Option<Either<Failure, Unit>> get failureOrSuccess =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BookListStateCopyWith<BookListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookListStateCopyWith<$Res> {
  factory $BookListStateCopyWith(
          BookListState value, $Res Function(BookListState) then) =
      _$BookListStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoading,
      List<Book> books,
      Option<Either<Failure, Unit>> failureOrSuccess});
}

/// @nodoc
class _$BookListStateCopyWithImpl<$Res>
    implements $BookListStateCopyWith<$Res> {
  _$BookListStateCopyWithImpl(this._value, this._then);

  final BookListState _value;
  // ignore: unused_field
  final $Res Function(BookListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? books = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$BookListStateCopyWith<$Res>
    implements $BookListStateCopyWith<$Res> {
  factory _$BookListStateCopyWith(
          _BookListState value, $Res Function(_BookListState) then) =
      __$BookListStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoading,
      List<Book> books,
      Option<Either<Failure, Unit>> failureOrSuccess});
}

/// @nodoc
class __$BookListStateCopyWithImpl<$Res>
    extends _$BookListStateCopyWithImpl<$Res>
    implements _$BookListStateCopyWith<$Res> {
  __$BookListStateCopyWithImpl(
      _BookListState _value, $Res Function(_BookListState) _then)
      : super(_value, (v) => _then(v as _BookListState));

  @override
  _BookListState get _value => super._value as _BookListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? books = freezed,
    Object? failureOrSuccess = freezed,
  }) {
    return _then(_BookListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Option<Either<Failure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_BookListState implements _BookListState {
  const _$_BookListState(
      {required this.isLoading,
      required this.books,
      required this.failureOrSuccess});

  @override
  final bool isLoading;
  @override
  final List<Book> books;
  @override
  final Option<Either<Failure, Unit>> failureOrSuccess;

  @override
  String toString() {
    return 'BookListState(isLoading: $isLoading, books: $books, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BookListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.books, books) &&
            const DeepCollectionEquality()
                .equals(other.failureOrSuccess, failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(books),
      const DeepCollectionEquality().hash(failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  _$BookListStateCopyWith<_BookListState> get copyWith =>
      __$BookListStateCopyWithImpl<_BookListState>(this, _$identity);
}

abstract class _BookListState implements BookListState {
  const factory _BookListState(
          {required bool isLoading,
          required List<Book> books,
          required Option<Either<Failure, Unit>> failureOrSuccess}) =
      _$_BookListState;

  @override
  bool get isLoading;
  @override
  List<Book> get books;
  @override
  Option<Either<Failure, Unit>> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$BookListStateCopyWith<_BookListState> get copyWith =>
      throw _privateConstructorUsedError;
}
