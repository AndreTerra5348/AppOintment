import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientDetailsPage extends StatelessWidget {
  final DetailsBloc<Client> detailsBloc;
  final DeleteBloc<Client> deleteBloc;
  final EditBloc<Client> editBloc;
  final ClientBloc clientBloc;
  final Uid clientId;

  const ClientDetailsPage({
    super.key,
    required this.detailsBloc,
    required this.deleteBloc,
    required this.editBloc,
    required this.clientBloc,
    required this.clientId,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              detailsBloc..add(DetailsEvent.loaded(id: clientId)),
        ),
        BlocProvider(
          create: (context) => deleteBloc,
        ),
        BlocProvider(
          create: (context) => editBloc,
        ),
        BlocProvider(
          create: (context) => clientBloc,
        ),
      ],
      child: const ClientDetailsPageScaffold(),
    );
  }
}
