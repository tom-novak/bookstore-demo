import 'package:bookstore_demo/main_prod.dart';
import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart' as common;
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

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
          if (snapshot.data == null) {
            return Center(
              child: Text(AppLocalizations.of(context)!.start_searching),
            ); // TODO extract to widget
          }

          return snapshot.data!.failureOrSuccessOption.fold(
            // without data
            () => Center(
              child: Text(AppLocalizations.of(context)!.start_searching),
            ), // TODO extract to widget
            (valueOrFailure) => valueOrFailure.fold(
              (dataFailure) => common.CommonErrorPage(
                  label: CommonLocalizations.of(context)!.error,
                  description: CommonLocalizations.of(context)!.somethingWrong),
              (data) {
                return common.SliverListPage(
                  controller: _controller,
                  itemBuilder: (context, index) {
                    var item = data.books[index];
                    return common.CommonListTile(
                      item: item.toCommonItem(),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return BookDetailScreen(
                                bookPreview: item,
                                cubit: getIt.get<BookDetailCubit>(),
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
                    return common.LayoutState.content;
                  },
                  footer: common.LoadingIndicator(
                    status: snapshot.data!.isLoading
                        ? common.LoadingStatus.loading
                        : common.LoadingStatus.idle,
                  ),
                );
              },
            ),
          );
        },
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
                  widget.cubit.search(SearchQuery(value));
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
