import 'dart:async';

import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/application/register/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/presentation/client/common/widgets/name_input.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/common/failure_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientRegisterFormWidget extends StatefulWidget {
  const ClientRegisterFormWidget({super.key});

  @override
  State<ClientRegisterFormWidget> createState() =>
      _ClientRegisterFormWidgetState();
}

class _ClientRegisterFormWidgetState extends State<ClientRegisterFormWidget> {
  final _formKey = GlobalKey<FormState>();
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterBloc<Client>, RegisterState>(
      listenWhen: (previous, current) => current.isFailure || current.isSuccess,
      listener: (context, registerState) {
        registerState.maybeMap(
          orElse: () {},
          success: (_) => _handleSuccess(context),
          failure: (failureState) => _handleFailure(
            context,
            failureState.failure,
          ),
        );
        _timer = Timer(
          const Duration(seconds: 1),
          () => Navigator.pop(
            context,
          ),
        );
      },
      builder: (context, registerState) {
        return Form(
          key: _formKey,
          autovalidateMode: registerState.isFailure
              ? AutovalidateMode.always
              : AutovalidateMode.onUserInteraction,
          child: BlocBuilder<ClientBloc, ClientState>(
            builder: (context, clientState) {
              return Stack(
                children: [
                  Column(
                    children: [
                      const NameInputWidget(),
                      ElevatedButton(
                        onPressed: () => context.submitted(
                          client: clientState.client,
                        ),
                        child: const Icon(Icons.add_circle),
                      )
                    ],
                  ),
                  if (registerState.isInProgress)
                    const CircularProgressIndicator(value: null)
                ],
              );
            },
          ),
        );
      },
    );
  }

  _handleSuccess(BuildContext context) {
    setState(() => _formKey.currentState!.reset());
    showDialog(
      context: context,
      builder: (_) => Column(
        children: [
          const Icon(Icons.check_circle_outline),
          Text(context.tr.registrationCompleted)
        ],
      ),
    );
  }

  _handleFailure(BuildContext context, SubmissionFailure failure) {
    showDialog(
      context: context,
      builder: (_) => Column(
        children: [
          const Icon(Icons.error_outline),
          Text(failure.toErrorText(context)),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}

extension on BuildContext {
  void submitted({required Client client}) => read<RegisterBloc<Client>>().add(
        RegisterEvent<Client>.registered(entity: client),
      );
}
