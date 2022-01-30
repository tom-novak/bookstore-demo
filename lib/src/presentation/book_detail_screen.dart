import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:flutter/material.dart';

class BookDetailScreen extends StatelessWidget {
  final Book bookPreview;
  final BookDetailCubit cubit;

  const BookDetailScreen({
    Key? key,
    required this.bookPreview,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${bookPreview.title}'),
      ),
      body: CustomScrollView(
        slivers: [
          if (bookPreview.title != null)
            SliverToBoxAdapter(
              child: Text(bookPreview.title!),
            ),
        ],
      ),
    );
  }
}
