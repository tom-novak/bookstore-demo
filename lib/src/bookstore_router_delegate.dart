import 'package:bookstore_demo/src/bookstore_route_path.dart';
import 'package:bookstore_demo/src/presentation/presentation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';
import 'package:get_it/get_it.dart';

import 'application/application.dart';
import 'domain/domain.dart';

class BookStoreRouterDelegate extends RouterDelegate<BookStoreRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<BookStoreRoutePath> {
  @override
  final GlobalKey<NavigatorState> navigatorKey;

  String? _selectedBookId;
  bool show404 = false;

  BookStoreRouterDelegate() : navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return Navigator(
      pages: [
        MaterialPage(
          child: BlocProvider(
            create: (context) => BookListCubit(
              repository: GetIt.I.get<IBookRepository>(),
            ),
            child: BookListScreen(
              onBookSelected: _onBookSelected,
            ),
          ),
        ),
        if (show404)
          const MaterialPage(
              child: CommonErrorPage(
            label: '404',
            description: 'Not found',
          ))
        else if (_selectedBookId != null)
          MaterialPage(
            child: BlocProvider(
              create: (context) => BookDetailCubit(
                repository: GetIt.I.get<IBookRepository>(),
              ),
              child: BookDetailScreen(
                bookId: _selectedBookId!,
              ),
            ),
          ),
      ],
      onPopPage: (route, result) {
        if (!route.didPop(result)) {
          return false;
        }

        _selectedBookId = null;
        show404 = false;
        notifyListeners();

        return true;
      },
    );
  }

  @override
  Future<void> setNewRoutePath(BookStoreRoutePath configuration) async {
    if (configuration.isUnknown) {
      _selectedBookId = null;
      show404 = true;
      return;
    }

    if (configuration.isDetailPage) {
      _selectedBookId = configuration.isbn;
    } else {
      _selectedBookId = null;
    }

    show404 = false;
  }

  @override
  BookStoreRoutePath get currentConfiguration {
    if (show404) {
      return BookStoreRoutePath.unknown();
    }

    return _selectedBookId == null
        ? BookStoreRoutePath.home()
        : BookStoreRoutePath.detail(_selectedBookId);
  }

  void _onBookSelected(Book book) {
    _selectedBookId = book.isbn;
    notifyListeners();
  }
}
