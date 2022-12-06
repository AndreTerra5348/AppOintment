import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/page.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:appointment/presentation/config/di.dart';
import 'package:appointment/presentation/config/route.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppOintment extends StatelessWidget {
  // TODO: add main page
  // TODO: main page should contains navigatio buttons to search and register
  // TODO: add routes
  final _route = AppRouter();
  AppOintment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ClientDetailPage(
        detailsBloc: getIt(),
        deleteBloc: getIt(),
        editBloc: getIt(),
        clientBloc: getIt(),
        clientId: Uid.fromInt(2),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
    // return MaterialApp.router(
    //   title: 'AppOintment',
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   localizationsDelegates: AppLocalizations.localizationsDelegates,
    //   supportedLocales: AppLocalizations.supportedLocales,
    //   routerDelegate: _route.delegate(initialRoutes: []),
    //   routeInformationParser: _route.defaultRouteParser(),
    // );
  }
}
