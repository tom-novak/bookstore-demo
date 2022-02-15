import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

class BookListInitContent extends StatelessWidget {
  const BookListInitContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      AppLocalizations.of(context)!.start_searching,
      style: Theme.of(context).textTheme.headline4,
    ));
  }
}
