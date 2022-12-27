import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/presentation/client/details/widgets/client_details_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientDetailsPage extends StatelessWidget {
  final LoadBloc<Client> loadBloc;
  final DeleteBloc<Client> deleteBloc;
  final EditBloc<Client> editBloc;
  final DetailsBloc<Client> detailsBloc;
  final ClientBloc clientBloc;
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
