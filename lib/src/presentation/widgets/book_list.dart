import 'package:bookstore_demo/src/application/application.dart';
import 'package:flutter/material.dart';

class BookList extends StatelessWidget {
  final BookListCubit cubit;

  const BookList({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: cubit.stream,
      builder: (context, snapshot) {
        return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: ElevatedButton(
                child: const Text('Search'),
                onPressed: () => cubit.search('mongodb'),
              ),
            )
          ],
        );
      },
    );
  }
}
