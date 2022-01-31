import 'package:bookstore_demo/src/infrastructure/api/model/book.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';

extension BookX on Book {
  ICommonItem toCommonItem() {
    return CommonItem(
      title: title,
      subtitle: subtitle,
    );
  }
}