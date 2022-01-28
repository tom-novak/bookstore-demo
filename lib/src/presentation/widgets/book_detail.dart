import 'package:bookstore_demo/src/application/application.dart';
import 'package:flutter/material.dart';

class BookDetail extends StatelessWidget {
  final BookDetailCubit cubit;

  const BookDetail({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Text('Book Detail'),
        )
      ],
    );
  }
}
