import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/presentation/client/register/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientRegisterFormWidget extends StatelessWidget {
  const ClientRegisterFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientRegisterBloc, ClientRegisterState>(
      builder: (context, state) {
        return Form(
            child: Column(
          children: [
            const NameInputWidget(),
            ElevatedButton(
                onPressed: () => context
                    .read<ClientRegisterBloc>()
                    .add(const ClientRegisterEvent.submitted()),
                child: const Text("Register"))
          ],
        ));
      },
    );
  }
}
