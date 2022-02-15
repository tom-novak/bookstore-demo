// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'paged_books.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PagedBooksTearOff {
  const _$PagedBooksTearOff();

  _PagedBooks call(
      {required int page, required int total, required List<Book> books}) {
    return _PagedBooks(
      page: page,
      total: total,
      books: books,
    );
  }
}

/// @nodoc
const $PagedBooks = _$PagedBooksTearOff();

/// @nodoc
mixin _$PagedBooks {
  int get page => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<Book> get books => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PagedBooksCopyWith<PagedBooks> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedBooksCopyWith<$Res> {
  factory $PagedBooksCopyWith(
          PagedBooks value, $Res Function(PagedBooks) then) =
      _$PagedBooksCopyWithImpl<$Res>;
  $Res call({int page, int total, List<Book> books});
}

/// @nodoc
class _$PagedBooksCopyWithImpl<$Res> implements $PagedBooksCopyWith<$Res> {
  _$PagedBooksCopyWithImpl(this._value, this._then);

  final PagedBooks _value;
  // ignore: unused_field
  final $Res Function(PagedBooks) _then;

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
              as List<Book>,
    ));
  }
}

/// @nodoc
abstract class _$PagedBooksCopyWith<$Res> implements $PagedBooksCopyWith<$Res> {
  factory _$PagedBooksCopyWith(
          _PagedBooks value, $Res Function(_PagedBooks) then) =
      __$PagedBooksCopyWithImpl<$Res>;
  @override
  $Res call({int page, int total, List<Book> books});
}

/// @nodoc
class __$PagedBooksCopyWithImpl<$Res> extends _$PagedBooksCopyWithImpl<$Res>
    implements _$PagedBooksCopyWith<$Res> {
  __$PagedBooksCopyWithImpl(
      _PagedBooks _value, $Res Function(_PagedBooks) _then)
      : super(_value, (v) => _then(v as _PagedBooks));

  @override
  _PagedBooks get _value => super._value as _PagedBooks;

  @override
  $Res call({
    Object? page = freezed,
    Object? total = freezed,
    Object? books = freezed,
  }) {
    return _then(_PagedBooks(
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
              as List<Book>,
    ));
  }
}

/// @nodoc

class _$_PagedBooks implements _PagedBooks {
  _$_PagedBooks({required this.page, required this.total, required this.books});

  @override
  final int page;
  @override
  final int total;
  @override
  final List<Book> books;

  @override
  String toString() {
    return 'PagedBooks(page: $page, total: $total, books: $books)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PagedBooks &&
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
  _$PagedBooksCopyWith<_PagedBooks> get copyWith =>
      __$PagedBooksCopyWithImpl<_PagedBooks>(this, _$identity);
}

abstract class _PagedBooks implements PagedBooks {
  factory _PagedBooks(
      {required int page,
      required int total,
      required List<Book> books}) = _$_PagedBooks;

  @override
  int get page;
  @override
  int get total;
  @override
  List<Book> get books;
  @override
  @JsonKey(ignore: true)
  _$PagedBooksCopyWith<_PagedBooks> get copyWith =>
      throw _privateConstructorUsedError;
}
