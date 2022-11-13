import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/di.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppOintment extends StatelessWidget {
  const AppOintment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ClientRegisterPage(bloc: getIt<ClientRegisterBloc>()));
  }
}

extension LocalizedBuildContext on BuildContext {
  AppLocalizations get tr => AppLocalizations.of(this);
}
