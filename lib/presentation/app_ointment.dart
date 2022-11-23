import 'package:appointment/presentation/config/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppOintment extends StatelessWidget {
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
      routerDelegate: _route.delegate(initialRoutes: []),
      routeInformationParser: _route.defaultRouteParser(),
    );
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this);
}
