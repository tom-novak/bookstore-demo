import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';

class SearchForm extends StatefulWidget {
  final String? initialValue;
  final String? hintValue;
  final ValueChanged<String>? onSubmit;
  final ValueChanged<String>? onValueChanged;
  final TextEditingController controller;
  final InputDecoration? inputDecoration;

  SearchForm({
    Key? key,
    this.initialValue,
    this.hintValue,
    this.onSubmit,
    this.onValueChanged,
    TextEditingController? controller,
    this.inputDecoration,
  })
      : controller = controller ?? TextEditingController(),
        super(key: key);

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    widget.controller.addListener(_onValueChanged);
    super.initState();
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onValueChanged);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var inputDecoration = widget.inputDecoration ??
        InputDecoration(
            border: const UnderlineInputBorder(),
            hintText: widget.hintValue ?? AppLocalizations.of(context)!.search,
            suffixIcon: IconButton(
              icon: const Icon(Icons.backspace),
              onPressed: () {
                widget.controller.clear();
              },
            ));

    return Form(
      key: _formKey,
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: TextFormField(
                decoration: inputDecoration,
                controller: widget.controller,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: widget.onSubmit,
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
            ),
            onPressed: () {
              if (widget.onSubmit != null) {
                widget.onSubmit!(widget.controller.text);
              }
            },
            child: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }

  void _onValueChanged() {
    if (widget.onValueChanged != null) {
      widget.onValueChanged!(widget.controller.text);
    }
  }
}
