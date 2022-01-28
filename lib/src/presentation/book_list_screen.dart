import 'package:bookstore_demo/main.dart';
import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/presentation/book_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';

class BookListScreen extends StatefulWidget {
  final BookListCubit cubit;

  const BookListScreen({
    Key? key,
    required this.cubit,
  }) : super(key: key);

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  late ScrollController _controller;
  late Function() bottomReachedListener;
  var loadingStatus = LoadingStatus.idle;

  @override
  void initState() {
    bottomReachedListener = onBottomReached;
    _controller = ScrollController();
    _controller.addListener(bottomReachedListener);
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void onBottomReached() {
    if (_controller.position.pixels > _controller.position.maxScrollExtent) {
      setState(() {
        loadingStatus = LoadingStatus.loading;
      });
      widget.cubit.loadNext();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book search'),
      ),
      body: StreamBuilder<BookListState>(
        stream: widget.cubit.stream,
        builder: (context, snapshot) {
          if (snapshot.data?.data.books != null) {
            return SliverListPage(
              controller: _controller,
              itemBuilder: (context, index) {
                var item = snapshot.data!.data.books[index];
                return ListTile(
                  leading: Text('${index + 1}'),
                  title: Text(item.title ?? ''),
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) {
                          return BookDetailScreen(
                            bookPreview: snapshot.data!.data.books[index],
                            cubit: getIt.get<BookDetailCubit>(),
                          );
                        },
                      ),
                    );
                  },
                );
              },
              separatorBuilder: (context, index) => const Divider(),
              itemCount: snapshot.data!.data.books.length,
              layoutStateBuilder: (context) {
                return LayoutState.content;
              },
              footer: LoadingIndicator(
                status: loadingStatus,
              ),
            );
          }

          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
      bottomNavigationBar: Material(
        elevation: 20,
        child: SafeArea(
          child: Padding(
            padding: kContainerPadding,
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: TextFormField(
                        controller: _searchController,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {
                      widget.cubit.search(_searchController.text);
                    },
                    child: const Icon(Icons.search),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
