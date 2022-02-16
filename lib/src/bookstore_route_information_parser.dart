import 'package:bookstore_demo/src/bookstore_route_path.dart';
import 'package:flutter/cupertino.dart';

/// Possible paths
/// "/" homepage
/// "/?query=django&page=2" homepage with defined search query and page
/// "/book/{isbn}" detail page with defined isbn
class BookStoreRouteInformationParser
    extends RouteInformationParser<BookStoreRoutePath> {
  @override
  Future<BookStoreRoutePath> parseRouteInformation(
      RouteInformation routeInformation) async {
    final uri = Uri.parse(routeInformation.location ?? '');

    if (uri.pathSegments.isEmpty) {
      return BookStoreRoutePath.home();
    }

    if (uri.pathSegments.length == 2) {
      if (uri.pathSegments[0] != 'book') return BookStoreRoutePath.unknown();
      return BookStoreRoutePath.detail(uri.pathSegments[1]);
    }

    return BookStoreRoutePath.unknown();
  }

  @override
  RouteInformation restoreRouteInformation(BookStoreRoutePath configuration) {
    if (configuration.isHomePage) {
      return const RouteInformation(location: '/');
    } else if (configuration.isDetailPage) {
      return RouteInformation(location: '/book/${configuration.isbn}');
    }
    return const RouteInformation(location: '/404');
  }
}
