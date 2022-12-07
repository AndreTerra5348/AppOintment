import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientDetailsPage extends StatelessWidget {
  final LoadBloc<Client> loadBloc;
  final DeleteBloc<Client> deleteBloc;
  final EditBloc<Client> editBloc;
  final ClientBloc clientBloc;
  final DetailsBloc detailsBloc;
  final Uid clientId;

  const ClientDetailsPage({
    super.key,
    required this.loadBloc,
    required this.deleteBloc,
    required this.editBloc,
    required this.clientBloc,
    required this.clientId,
    required this.detailsBloc,
  });

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => loadBloc..add(LoadEvent.loaded(id: clientId)),
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
        BlocProvider(
          create: (context) => detailsBloc,
        ),
      ],
      child: const ClientDetailsPageScaffold(),
    );
  }
}
