import 'package:appointment/presentation/config/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppOintment extends StatelessWidget {
  // TODO: add main page
  // TODO: main page should contains navigatio buttons to search and register
  // TODO: add routes
  // TODO: change debug banner place
  final _route = AppRouter();
  AppOintment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'AppOintment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerDelegate: _route.delegate(),
      routeInformationParser: _route.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
