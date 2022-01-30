import 'package:flutter/material.dart';

class LabeledSection extends StatelessWidget {
  final String label;
  final Widget content;

  const LabeledSection({
    Key? key,
    required this.label,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            label,
            style: Theme.of(context).textTheme.headline4,
          ),
        ),
        Container(
          child: content,
        ),
      ],
    );
  }
}
