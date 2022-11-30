import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/delete/bloc/bloc.dart';
import 'package:appointment/application/client/details/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MockClientDetailPage extends StatelessWidget {
  final ClientDetailsBloc clientDetailsBloc;
  final ClientDetailsDeleteBloc clientDetailsDeleteBloc;
  final ClientDetailsEditBloc clientDetailsEditBloc;
  final Client client;
  final Widget child;
  final bool shouldAddClient;

  const MockClientDetailPage(
      {super.key,
      required this.client,
      required this.clientDetailsBloc,
      required this.clientDetailsDeleteBloc,
      required this.clientDetailsEditBloc,
      required this.child,
      this.shouldAddClient = true});

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
              create: (context) {
                if (shouldAddClient) {
                  clientDetailsBloc
                      .add(ClientDetailsEvent.clientLoaded(client: client));
                }
                return clientDetailsBloc;
              },
            ),
            BlocProvider(
              create: (context) => clientDetailsDeleteBloc,
            ),
            BlocProvider(
              create: (context) => clientDetailsEditBloc,
            ),
          ],
          child: child,
        ),
      ),
    );
  }
}
