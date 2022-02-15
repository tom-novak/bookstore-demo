// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BooksResponse _$BooksResponseFromJson(Map<String, dynamic> json) {
  return _BooksResponse.fromJson(json);
}

/// @nodoc
class _$BooksResponseTearOff {
  const _$BooksResponseTearOff();

  _BooksResponse call(
      {@JsonKey(defaultValue: 1, fromJson: int.parse)
          required int page,
      @JsonKey(defaultValue: 0, fromJson: int.parse)
          required int total,
      @JsonKey(defaultValue: <BookResponse>[])
          required List<BookResponse> books}) {
    return _BooksResponse(
      page: page,
      total: total,
      books: books,
    );
  }

  BooksResponse fromJson(Map<String, Object?> json) {
    return BooksResponse.fromJson(json);
  }
}

/// @nodoc
const $BooksResponse = _$BooksResponseTearOff();

/// @nodoc
mixin _$BooksResponse {
  @JsonKey(defaultValue: 1, fromJson: int.parse)
  int get page => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: 0, fromJson: int.parse)
  int get total => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: <BookResponse>[])
  List<BookResponse> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BooksResponseCopyWith<BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksResponseCopyWith<$Res> {
  factory $BooksResponseCopyWith(
          BooksResponse value, $Res Function(BooksResponse) then) =
      _$BooksResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(defaultValue: 1, fromJson: int.parse) int page,
      @JsonKey(defaultValue: 0, fromJson: int.parse) int total,
      @JsonKey(defaultValue: <BookResponse>[]) List<BookResponse> books});
}

/// @nodoc
class _$BooksResponseCopyWithImpl<$Res>
    implements $BooksResponseCopyWith<$Res> {
  _$BooksResponseCopyWithImpl(this._value, this._then);

  final BooksResponse _value;
  // ignore: unused_field
  final $Res Function(BooksResponse) _then;

  @override
  $Res call({
    Object? page = freezed,
    Object? total = freezed,
    Object? books = freezed,
  }) {
    return _then(_value.copyWith(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookResponse>,
    ));
  }
}

/// @nodoc
abstract class _$BooksResponseCopyWith<$Res>
    implements $BooksResponseCopyWith<$Res> {
  factory _$BooksResponseCopyWith(
          _BooksResponse value, $Res Function(_BooksResponse) then) =
      __$BooksResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(defaultValue: 1, fromJson: int.parse) int page,
      @JsonKey(defaultValue: 0, fromJson: int.parse) int total,
      @JsonKey(defaultValue: <BookResponse>[]) List<BookResponse> books});
}

/// @nodoc
class __$BooksResponseCopyWithImpl<$Res>
    extends _$BooksResponseCopyWithImpl<$Res>
    implements _$BooksResponseCopyWith<$Res> {
  __$BooksResponseCopyWithImpl(
      _BooksResponse _value, $Res Function(_BooksResponse) _then)
      : super(_value, (v) => _then(v as _BooksResponse));

  @override
  _BooksResponse get _value => super._value as _BooksResponse;

  @override
  $Res call({
    Object? page = freezed,
    Object? total = freezed,
    Object? books = freezed,
  }) {
    return _then(_BooksResponse(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<BookResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BooksResponse implements _BooksResponse {
  _$_BooksResponse(
      {@JsonKey(defaultValue: 1, fromJson: int.parse) required this.page,
      @JsonKey(defaultValue: 0, fromJson: int.parse) required this.total,
      @JsonKey(defaultValue: <BookResponse>[]) required this.books});

  factory _$_BooksResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BooksResponseFromJson(json);

  @override
  @JsonKey(defaultValue: 1, fromJson: int.parse)
  final int page;
  @override
  @JsonKey(defaultValue: 0, fromJson: int.parse)
  final int total;
  @override
  @JsonKey(defaultValue: <BookResponse>[])
  final List<BookResponse> books;

  @override
  String toString() {
    return 'BooksResponse(page: $page, total: $total, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BooksResponse &&
            const DeepCollectionEquality().equals(other.page, page) &&
            const DeepCollectionEquality().equals(other.total, total) &&
            const DeepCollectionEquality().equals(other.books, books));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(page),
      const DeepCollectionEquality().hash(total),
      const DeepCollectionEquality().hash(books));

  @JsonKey(ignore: true)
  @override
  _$BooksResponseCopyWith<_BooksResponse> get copyWith =>
      __$BooksResponseCopyWithImpl<_BooksResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BooksResponseToJson(this);
  }
}

abstract class _BooksResponse implements BooksResponse {
  factory _BooksResponse(
      {@JsonKey(defaultValue: 1, fromJson: int.parse)
          required int page,
      @JsonKey(defaultValue: 0, fromJson: int.parse)
          required int total,
      @JsonKey(defaultValue: <BookResponse>[])
          required List<BookResponse> books}) = _$_BooksResponse;

  factory _BooksResponse.fromJson(Map<String, dynamic> json) =
      _$_BooksResponse.fromJson;

  @override
  @JsonKey(defaultValue: 1, fromJson: int.parse)
  int get page;
  @override
  @JsonKey(defaultValue: 0, fromJson: int.parse)
  int get total;
  @override
  @JsonKey(defaultValue: <BookResponse>[])
  List<BookResponse> get books;
  @override
  @JsonKey(ignore: true)
  _$BooksResponseCopyWith<_BooksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
