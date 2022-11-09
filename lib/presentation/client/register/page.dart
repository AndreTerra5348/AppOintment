import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/di.dart';
import 'package:appointment/presentation/client/register/widgets/form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientRegisterPage extends StatelessWidget {
  const ClientRegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Client Registration")),
      body: BlocProvider(
        create: (context) => ClientRegisterBloc(),
        child: const ClientRegisterFormWidget(),
      ),
    );
  }
}
