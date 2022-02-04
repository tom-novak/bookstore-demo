import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';

class BookDetailSliverBox extends StatelessWidget {
  final String label;
  final String? content;

  const BookDetailSliverBox({
    Key? key,
    required this.label,
    this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (content?.isNotEmpty ?? false) {
      return SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(
            kContainerPaddingValue,
            kContainerPaddingValue,
            kContainerPaddingValue,
            0.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  label,
                  style: Theme
                      .of(context)
                      .textTheme
                      .headline5,
                ),
              ),
              Text(
                content!,
                style: Theme
                    .of(context)
                    .textTheme
                    .bodyText1,
              ),
            ],
          ),
        ),
      );
    } else {
      return const SizedBox.shrink();
    }
  }
}
