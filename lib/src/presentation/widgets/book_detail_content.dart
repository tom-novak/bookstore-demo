import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart' as common;
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

class BookDetailContent extends StatelessWidget {
  final Book book;

  const BookDetailContent({
    Key? key,
    required this.book,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: common.kContainerPaddingValue,
          ),
        ),
        if (book.title?.isNotEmpty ?? false)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: common.kContainerPaddingValue),
              child: Text(
                book.title!,
                style: Theme.of(context).textTheme.headline3,
              ),
            ),
          ),
        if (book.subtitle?.isNotEmpty ?? false)
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: common.kContainerPaddingValue),
              child: Text(
                book.subtitle!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
          ),
        if (book.image?.isNotEmpty ?? false)
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: common.kContainerPaddingValue),
              width: double.maxFinite,
              height: kBookDetailImageHeight,
              child: BookDetailImage(imageUrl: book.image!),
            ),
          ),
        BookDetailSliverBox(
          label: AppLocalizations.of(context)!.price,
          content: book.price!,
        ),
        BookDetailSliverBox(
          label: AppLocalizations.of(context)!.authors,
          content: book.authors!,
        ),
        BookDetailSliverBox(
          label: AppLocalizations.of(context)!.publisher,
          content: book.publisher!,
        ),
        BookDetailSliverBox(
          label: AppLocalizations.of(context)!.year,
          content: book.year!,
        ),
        BookDetailSliverBox(
          label: AppLocalizations.of(context)!.pages,
          content: book.pages!,
        ),
        if (book.description?.isNotEmpty ?? false)
          SliverToBoxAdapter(
            child: Text(
              book.description!,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: common.kContainerPaddingValue,
          ),
        ),
      ],
    );
  }
}
