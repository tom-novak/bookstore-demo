import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'paged_data.freezed.dart';

part 'paged_data.g.dart';

@freezed
class PagedData with _$PagedData {
  factory PagedData({
    @JsonKey(defaultValue: 1, fromJson: int.parse) required int page,
    @JsonKey(defaultValue: 0, fromJson: int.parse) required int total,
    @JsonKey(defaultValue: <Book>[]) required List<Book> books,
  }) = _PagedData;

  factory PagedData.fromJson(Map<String, dynamic> json) =>
      _$PagedDataFromJson(json);
}
