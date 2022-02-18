// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bookstore_demo/src/bookstore_app.dart';
import 'package:bookstore_demo/src/domain/domain.dart';
import 'package:bookstore_demo/src/infrastructure/api/mock/book_store_mock_api.dart';
import 'package:bookstore_demo/src/infrastructure/infrastructure.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';

void main() {
  group('Book list', () {
    const bookListInitContentKey = Key('bookList:initContent');
    const bookListContentKey = Key('bookList:content');
    const searchFormTextInputKey = Key('searchForm:textInput');
    const searchFormSubmitKey = Key('searchForm:submit');

    GetIt getIt = GetIt.instance;
    getIt.registerFactory<BookStoreApi>(() => BookStoreMockApi());
    getIt.registerFactory<IBookRepository>(
        () => BookRepository(bookApi: getIt.get<BookStoreApi>()));

    testWidgets('Initial state', (tester) async {
      await tester.pumpWidget(const BookStoreApp());
      await tester.pumpAndSettle();

      expect(find.byType(BookListInitContent), findsOneWidget);
    });

    testWidgets('Book list layout states', (tester) async {
      await tester.pumpWidget(const BookStoreApp());
      await tester.pumpAndSettle();

      await tester.enterText(find.byKey(searchFormTextInputKey), 'django');
      expect(find.text('django'), findsOneWidget);

      await tester.tap(find.byKey(searchFormSubmitKey));
      await tester.pumpAndSettle();

      expect(find.byKey(bookListInitContentKey), findsNothing);
      expect(find.byKey(bookListContentKey), findsOneWidget);
    });
  });
}
