import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/register/bloc/register_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/presentation/client/register/widgets/client_register_form.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientRegisterPage extends StatelessWidget {
  final RegisterBloc<Client> registerBloc;
  final ClientBloc clientBloc;
  const ClientRegisterPage(
      {super.key, required this.registerBloc, required this.clientBloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr.pageClientRegisterTitle)),
      body: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => clientBloc,
          ),
          BlocProvider(
            create: (context) => registerBloc,
          ),
        ],
        child: const ClientRegisterFormWidget(),
      ),
    );
  }
}
