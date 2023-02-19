/// Defines [ClientCreatePage]
import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/presentation/client/create/widgets/client_create_form.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays [ClientCreateFormWidget], provides [ClientBloc] and [CreateBloc]
class ClientCreatePage extends StatelessWidget {
  final CreateBloc<Client> createBloc;
  final ClientBloc clientBloc;
  const ClientCreatePage(
      {super.key, required this.createBloc, required this.clientBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr.pageClientCreateTitle)),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => clientBloc,
          ),
          BlocProvider(
            create: (context) => createBloc,
          ),
        ],
        child: const ClientCreateFormWidget(),
      ),
    );
  }
}
