import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart' as common;
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

class BookDetailScreen extends StatefulWidget {
  final Book bookPreview;
  final BookDetailCubit cubit;

  const BookDetailScreen({
    Key? key,
    required this.bookPreview,
    required this.cubit,
  }) : super(key: key);

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  void initState() {
    widget.cubit.init(widget.bookPreview);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.book_detail),
      ),
      body: Padding(
        padding: common.kContainerPadding,
        child: BlocBuilder<BookDetailCubit, BookDetailState>(
          bloc: widget.cubit,
          builder: (context, snapshot) {
            if (snapshot.isLoading) {
              const Center(child: CircularProgressIndicator());
            }
            Widget result = const Center(
              child: Text('Some error'),
            );
            snapshot.failureOrSuccessOption.fold(
                () => null,
                (failureOrSuccess) => failureOrSuccess.fold(
                    (l) => null,
                    (book) => result = CustomScrollView(
                          slivers: [
                            if (book.title?.isNotEmpty ?? false)
                              SliverToBoxAdapter(
                                child: Text(
                                  book.title!,
                                  style: Theme.of(context).textTheme.headline3,
                                ),
                              ),
                            if (book.subtitle?.isNotEmpty ?? false)
                              SliverToBoxAdapter(
                                child: Text(
                                  book.subtitle!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                            if (book.authors?.isNotEmpty ?? false)
                              SliverToBoxAdapter(
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 16.0),
                                  child: LabeledSection(
                                    label:
                                        AppLocalizations.of(context)!.authors,
                                    content: Text(
                                      book.authors!,
                                      style:
                                          Theme.of(context).textTheme.bodyText1,
                                    ),
                                  ),
                                ),
                              ),
                            if (book.description?.isNotEmpty ?? false)
                              SliverToBoxAdapter(
                                child: Text(
                                  book.description!,
                                  style: Theme.of(context).textTheme.bodyText1,
                                ),
                              ),
                          ],
                        )));

            return result;
          },
        ),
      ),
    );
  }
}
