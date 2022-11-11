import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/di.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:flutter/material.dart';

class AppOintment extends StatelessWidget {
  const AppOintment({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ClientRegisterPage(bloc: getIt<ClientRegisterBloc>()));
  }
}
