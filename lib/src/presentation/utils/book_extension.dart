import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';

extension BookX on Book {
  ICommonItem toCommonItem() {
    return CommonItem(
      title: title,
      subtitle: subtitle,
      image: image != null ? CachedNetworkImageProvider(image!) : null,
    );
  }
}
