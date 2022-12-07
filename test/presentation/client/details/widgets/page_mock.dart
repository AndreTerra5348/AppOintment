import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MockClientDetailPage extends StatelessWidget {
  final LoadBloc<Client> clientLoadBloc;
  final DeleteBloc<Client> clientDeleteBloc;
  final EditBloc<Client> clientEditBloc;
  final DetailsBloc<Client> detailsBloc;
  final ClientBloc clientBloc;
  final Client client;
  final Widget child;

  const MockClientDetailPage({
    super.key,
    required this.client,
    required this.clientLoadBloc,
    required this.clientDeleteBloc,
    required this.clientEditBloc,
    required this.child,
    required this.clientBloc,
    required this.detailsBloc,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: const Locale('en'),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      home: Scaffold(
        body: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (context) => clientLoadBloc,
            ),
            BlocProvider(
              create: (context) => clientDeleteBloc,
            ),
            BlocProvider(
              create: (context) => clientEditBloc,
            ),
            BlocProvider(
              create: (context) => clientBloc,
            ),
            BlocProvider(
              create: (context) => detailsBloc,
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
