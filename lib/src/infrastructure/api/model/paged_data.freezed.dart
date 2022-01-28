// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paged_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PagedData _$PagedDataFromJson(Map<String, dynamic> json) {
  return _PagedData.fromJson(json);
}

/// @nodoc
class _$PagedDataTearOff {
  const _$PagedDataTearOff();

  _PagedData call(
      {required String page,
      required String total,
      required List<Book> books}) {
    return _PagedData(
      page: page,
      total: total,
      books: books,
    );
  }

  PagedData fromJson(Map<String, Object?> json) {
    return PagedData.fromJson(json);
  }
}

/// @nodoc
const $PagedData = _$PagedDataTearOff();

/// @nodoc
mixin _$PagedData {
  String get page => throw _privateConstructorUsedError;
  String get total => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PagedDataCopyWith<PagedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedDataCopyWith<$Res> {
  factory $PagedDataCopyWith(PagedData value, $Res Function(PagedData) then) =
      _$PagedDataCopyWithImpl<$Res>;
  $Res call({String page, String total, List<Book> books});
}

/// @nodoc
class _$PagedDataCopyWithImpl<$Res> implements $PagedDataCopyWith<$Res> {
  _$PagedDataCopyWithImpl(this._value, this._then);

  final PagedData _value;
  // ignore: unused_field
  final $Res Function(PagedData) _then;

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
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$PagedDataCopyWith<$Res> implements $PagedDataCopyWith<$Res> {
  factory _$PagedDataCopyWith(
          _PagedData value, $Res Function(_PagedData) then) =
      __$PagedDataCopyWithImpl<$Res>;
  @override
  $Res call({String page, String total, List<Book> books});
}

/// @nodoc
class __$PagedDataCopyWithImpl<$Res> extends _$PagedDataCopyWithImpl<$Res>
    implements _$PagedDataCopyWith<$Res> {
  __$PagedDataCopyWithImpl(_PagedData _value, $Res Function(_PagedData) _then)
      : super(_value, (v) => _then(v as _PagedData));

  @override
  _PagedData get _value => super._value as _PagedData;

  @override
  $Res call({
    Object? page = freezed,
    Object? total = freezed,
    Object? books = freezed,
  }) {
    return _then(_PagedData(
      page: page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as String,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
      books: books == freezed
          ? _value.books
          : books // ignore: cast_nullable_to_non_nullable
              as List<Book>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PagedData implements _PagedData {
  _$_PagedData({required this.page, required this.total, required this.books});

  factory _$_PagedData.fromJson(Map<String, dynamic> json) =>
      _$$_PagedDataFromJson(json);

  @override
  final String page;
  @override
  final String total;
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'PagedData(page: $page, total: $total, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagedData &&
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
  _$PagedDataCopyWith<_PagedData> get copyWith =>
      __$PagedDataCopyWithImpl<_PagedData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PagedDataToJson(this);
  }
}

abstract class _PagedData implements PagedData {
  factory _PagedData(
      {required String page,
      required String total,
      required List<Book> books}) = _$_PagedData;

  factory _PagedData.fromJson(Map<String, dynamic> json) =
      _$_PagedData.fromJson;

  @override
  String get page;
  @override
  String get total;
  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$PagedDataCopyWith<_PagedData> get copyWith =>
      throw _privateConstructorUsedError;
}
