import 'dart:async';

import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/application/common/formz.dart';
import 'package:appointment/presentation/client/register/widgets/name_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientRegisterFormWidget extends StatefulWidget {
  const ClientRegisterFormWidget({super.key});

  @override
  State<ClientRegisterFormWidget> createState() =>
      _ClientRegisterFormWidgetState();
}

class _ClientRegisterFormWidgetState extends State<ClientRegisterFormWidget> {
  bool _showFeedback = true;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientRegisterBloc, ClientRegisterState>(
      listenWhen: (previous, current) =>
          current.form.submissionStatus.isFailure ||
          current.form.submissionStatus.isSuccess,
      listener: (context, state) {
        Timer(const Duration(seconds: 1),
            () => setState(() => _showFeedback = false));
      },
      builder: (context, state) {
        return Form(
          child: Stack(
            children: [
              Column(
                children: [
                  const NameInputWidget(),
                  ElevatedButton(
                    onPressed: state.form.isValid
                        ? () => context
                            .read<ClientRegisterBloc>()
                            .add(const ClientRegisterEvent.submitted())
                        : null,
                    child: const Icon(Icons.add_circle),
                  )
                ],
              ),
              if (state.form.submissionStatus.isInProgress && _showFeedback)
                const CircularProgressIndicator(value: null),
              if (state.form.submissionStatus.isSuccess && _showFeedback)
                const Icon(Icons.check_circle_outline)
            ],
          ),
        );
      },
    );
  }
}
