import 'package:flutter/material.dart';

class EmptyBookImage extends StatelessWidget {
  const EmptyBookImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Theme.of(context).textTheme.bodyText1?.color ?? Colors.grey,
          width: 8.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(16.0),
        ),
      ),
      child: Icon(
        Icons.menu_book,
        size: 128.0,
        color: Theme.of(context).textTheme.bodyText1?.color ?? Colors.grey,
      ),
    );
  }
}
