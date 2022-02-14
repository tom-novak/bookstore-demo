import 'package:bookstore_demo/main_prod.dart';
import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart'
    hide SearchForm;

class BookListScreen extends StatefulWidget {
  const BookListScreen({
    Key? key,
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
    if (_controller.position.pixels > _controller.position.maxScrollExtent) {
      context.read<BookListCubit>().loadNext();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book search'),
      ),
      body: RefreshIndicator(
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
                    : const BookDetailInitContent();
              },
              (valueOrFailure) => valueOrFailure.fold(
                (dataFailure) => CommonErrorPage(
                    label: CommonLocalizations.of(context)!.error,
                    description:
                        CommonLocalizations.of(context)!.somethingWrong),
                (data) {
                  return SliverListPage(
                    controller: _controller,
                    itemBuilder: (context, index) {
                      var item = data.books[index];
                      return CommonListTile(
                        item: item.toCommonItem(),
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return BlocProvider(
                                  create: (context) => BookDetailCubit(
                                      repository: getIt.get<BookRepository>()),
                                  child: BookDetailScreen(
                                    bookPreview: item,
                                  ),
                                );
                              },
                            ),
                          );
                        },
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
      bottomNavigationBar: Material(
        elevation: 20,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SearchForm(
                onSubmit: (value) {
                  context.read<BookListCubit>().search(SearchQuery(value));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
