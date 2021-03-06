import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';
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
  })  : controller = controller ?? TextEditingController(),
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
                key: const Key('searchForm:textInput'),
                decoration: inputDecoration,
                controller: widget.controller,
                textInputAction: TextInputAction.search,
                onFieldSubmitted: (value) => _onSubmit(),
                validator: (value) => notNullValidator(context, value),
              ),
            ),
          ),
          ElevatedButton(
            key: const Key('searchForm:submit'),
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
            ),
            onPressed: _onSubmit,
            child: const Icon(Icons.search),
          ),
        ],
      ),
    );
  }

  void _onSubmit() {
    if (widget.onSubmit != null &&
        (_formKey.currentState?.validate() ?? false)) {
      widget.onSubmit!(widget.controller.text);
    }
  }

  void _onValueChanged() {
    widget.onValueChanged?.call(widget.controller.text);
  }
}
