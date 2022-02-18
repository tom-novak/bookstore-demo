import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

const searchFormTextInputKey = Key('searchForm:textInput');
const searchFormSubmitKey = Key('searchForm:submit');

Widget prepareWidget(Widget child) {
  return MaterialApp(
    localizationsDelegates: const [
      AppLocalizations.delegate,
      CommonLocalizations.delegate,
      GlobalMaterialLocalizations.delegate,
      GlobalCupertinoLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
    ],
    supportedLocales: AppLocalizations.supportedLocales,
    locale: const Locale('en'),
    home: Material(
      child: child,
    ),
  );
}

void main() {
  group('Search Form', () {
    testWidgets('Default hint text', (tester) async {
      await tester.pumpWidget(prepareWidget(SearchForm()));

      expect(find.text('Search'), findsOneWidget);
    });

    testWidgets('Custom hint text', (tester) async {
      await tester.pumpWidget(prepareWidget(SearchForm(
        hintValue: 'Custom hint value',
      )));

      expect(find.text('Custom hint value'), findsOneWidget);
    });

    testWidgets('Inactive submit button on empty query', (tester) async {
      var queryValue = 'default';
      await tester.pumpWidget(
          prepareWidget(SearchForm(onSubmit: (value) => queryValue = value,)));

      await tester.tap(find.byKey(searchFormSubmitKey));
      expect(queryValue, 'default');
    });

    testWidgets('Value returned on submit valid query', (tester) async {
      var queryValue = 'default';
      await tester.pumpWidget(prepareWidget(
        SearchForm(onSubmit: (value) {
          queryValue = value;
        }),
      ));

      await tester.enterText(
          find.byKey(searchFormTextInputKey), 'Custom query');
      await tester.tap(find.byKey(searchFormSubmitKey));
      expect(queryValue, 'Custom query');
    });
  });
}
