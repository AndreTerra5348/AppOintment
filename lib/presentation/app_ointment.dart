/// Defines [AppOintment]
import 'package:appointment/presentation/config/route_config.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

/// Displays [MaterialApp], configures [AppRouter] and [AppLocalizations]
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
      routerDelegate: _route.delegate(),
      routeInformationParser: _route.defaultRouteParser(),
      debugShowCheckedModeBanner: false,
    );
  }
}
