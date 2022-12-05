import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MockClientDetailPage extends StatelessWidget {
  final DetailsBloc<Client> clientDetailsBloc;
  final DeleteBloc<Client> clientDetailsDeleteBloc;
  final EditBloc<Client> clientDetailsEditBloc;
  final ClientBloc clientBloc;
  final Client client;
  final Widget child;

  const MockClientDetailPage({
    super.key,
    required this.client,
    required this.clientDetailsBloc,
    required this.clientDetailsDeleteBloc,
    required this.clientDetailsEditBloc,
    required this.child,
    required this.clientBloc,
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
              create: (context) => clientDetailsBloc,
            ),
            BlocProvider(
              create: (context) => clientDetailsDeleteBloc,
            ),
            BlocProvider(
              create: (context) => clientDetailsEditBloc,
            ),
            BlocProvider(
              create: (context) => clientBloc,
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
