import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BookDetailImage extends StatelessWidget {
  final String imageUrl;

  const BookDetailImage({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      fit: BoxFit.fitHeight,
      progressIndicatorBuilder: (context, url, downloadProgress) => Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).textTheme.bodyText1?.color ?? Colors.grey,
        ),
      ),
      errorWidget: (context, url, error) => const Center(
        child: EmptyBookImage(),
      ),
    );
  }
}
