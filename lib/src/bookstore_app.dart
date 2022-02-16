import 'package:bookstore_demo/src/bookstore_route_information_parser.dart';
import 'package:bookstore_demo/src/bookstore_router_delegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_common_widgets/flutter_common_localizations.dart';
import 'package:flutter_common_widgets/flutter_common_widgets.dart';
import 'package:flutter_gen/gen_l10n/bookstore_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class BookStoreApp extends StatelessWidget {
  const BookStoreApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData().cyanLightOne,
      onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        CommonLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: BookStoreRouterDelegate(),
      routeInformationParser: BookStoreRouteInformationParser(),
    );
  }
}
