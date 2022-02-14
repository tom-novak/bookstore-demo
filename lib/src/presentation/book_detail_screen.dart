import 'package:bookstore_demo/src/application/application.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart' as common;
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

class BookDetailScreen extends StatefulWidget {
  final Book bookPreview;

  const BookDetailScreen({
    Key? key,
    required this.bookPreview,
  }) : super(key: key);

  @override
  State<BookDetailScreen> createState() => _BookDetailScreenState();
}

class _BookDetailScreenState extends State<BookDetailScreen> {
  @override
  void initState() {
    context.read<BookDetailCubit>().init(widget.bookPreview);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.book_detail),
      ),
      body: BlocBuilder<BookDetailCubit, BookDetailState>(
        builder: (context, state) {
          if (state.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          return state.failureOrSuccessOption.fold(
              () => const SizedBox.shrink(),
              (failureOrSuccess) => failureOrSuccess.fold(
                    (bookFailure) => common.CommonErrorPage(
                      label: CommonLocalizations.of(context)!.error,
                      description:
                          CommonLocalizations.of(context)!.somethingWrong,
                    ),
                    (book) => BookDetailContent(book: book),
                  ));
        },
      ),
    );
  }
}
