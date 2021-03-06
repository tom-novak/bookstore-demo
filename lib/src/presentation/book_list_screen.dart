import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart'
    hide SearchForm;

class BookListScreen extends StatefulWidget {
  final ValueChanged<Book>? onBookSelected;

  const BookListScreen({
    Key? key,
    this.onBookSelected,
  }) : super(key: key);

  @override
  State<BookListScreen> createState() => _BookListScreenState();
}

class _BookListScreenState extends State<BookListScreen> {
  late ScrollController _controller;
  late Function() bottomReachedListener;

  @override
  void initState() {
    bottomReachedListener = onBottomReached;
    _controller = ScrollController();
    _controller.addListener(bottomReachedListener);
    super.initState();
  }

  @override
  void dispose() {
    _controller.removeListener(bottomReachedListener);
    super.dispose();
  }

  void onBottomReached() {
    if (_controller.position.pixels >= _controller.position.maxScrollExtent) {
      context.read<BookListCubit>().loadNext();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book search'),
      ),
      body: Column(
        children: [
          Expanded(
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<BookListCubit>().refresh();
                await context.read<BookListCubit>().stream.firstWhere((state) {
                  return state.isLoading == false;
                });
              },
              child: BlocBuilder<BookListCubit, BookListState>(
                builder: (context, state) {
                  return state.failureOrSuccessOption.fold(
                    // without data
                    () {
                      return state.isLoading
                          ? const CommonListShimmer(itemCount: 7)
                          : const BookListInitContent(
                              key: Key('bookList:initContent'),
                            );
                    },
                    (valueOrFailure) => valueOrFailure.fold(
                      (dataFailure) => CommonErrorPage(
                        key: const Key('bookList:commonError'),
                          label: CommonLocalizations.of(context)!.error,
                          description:
                              CommonLocalizations.of(context)!.somethingWrong),
                      (data) {
                        return SliverListPage(
                          key: const Key('bookList:content'),
                          controller: _controller,
                          itemBuilder: (context, index) {
                            var item = data.books[index];
                            return CommonListTile(
                              item: item.toCommonItem(),
                              onTap: () => widget.onBookSelected?.call(item),
                            );
                          },
                          separatorBuilder: (context, index) => const Divider(),
                          itemCount: data.books.length,
                          layoutStateBuilder: (context) {
                            return LayoutState.content;
                          },
                          footer: LoadingIndicator(
                            status: state.isLoading
                                ? LoadingStatus.loading
                                : LoadingStatus.idle,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ),
          Material(
            elevation: 20,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: SearchForm(
                    key: const Key('bookList:searchForm'),
                    onSubmit: (value) {
                      context.read<BookListCubit>().search(SearchQuery(value));
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
