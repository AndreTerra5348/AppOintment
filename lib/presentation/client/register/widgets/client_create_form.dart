/// Defines [ClientCreateFormWidget]
import 'dart:async';

import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/common/submission_status.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/presentation/client/register/widgets/client_create_name_input.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/common/failure_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:appointment/presentation/common/messege_dialog.dart'
    as messesge_dialog;

/// Handles [Client] registration,
/// displays and handles [CreateNameInputWidget] changes
class ClientCreateFormWidget extends StatefulWidget {
  const ClientCreateFormWidget({super.key});

  @override
  State<ClientCreateFormWidget> createState() => _ClientCreateFormWidgetState();
}

class _ClientCreateFormWidgetState extends State<ClientCreateFormWidget> {
  final _formKey = GlobalKey<FormState>();
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CreateBloc<Client>, CreateState>(
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
              return Container(
                margin: const EdgeInsets.all(8),
                child: Stack(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CreateNameInputWidget(),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomRight,
                            child: ElevatedButton(
                              onPressed: () => context.submitted(
                                client: clientState.client,
                              ),
                              child: const Icon(Icons.add_circle),
                            ),
                          ),
                        ),
                      ],
                    ),
                    if (registerState.isInProgress)
                      const Center(
                        child: CircularProgressIndicator(value: null),
                      )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }

  /// Handles [CreateBloc] success
  /// Resets [ClientBloc] and form state
  _handleSuccess(BuildContext context) {
    context.reset();
    setState(() => _formKey.currentState!.reset());
    messesge_dialog.show(
      context: context,
      icon: const Icon(
        Icons.check_circle_outline,
        color: Colors.green,
      ),
      text: Text(
        context.tr.creationCompleted,
        style: const TextStyle(
          color: Colors.green,
        ),
      ),
    );
  }

  /// Handles [CreateBloc] failure
  /// Shows dialog box with error message
  _handleFailure(BuildContext context, SubmissionFailure failure) {
    messesge_dialog.show(
      context: context,
      icon: const Icon(
        Icons.error_outline,
        color: Colors.red,
      ),
      text: Text(
        failure.toErrorText(context),
        style: const TextStyle(
          color: Colors.red,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}

/// Shortcuts for [CreateBloc] and [ClientBloc] events and states
extension on BuildContext {
  void submitted({required Client client}) => read<CreateBloc<Client>>().add(
        CreateEvent<Client>.created(entity: client),
      );

  void reset() => read<ClientBloc>().add(
        ClientEvent.loaded(
          client: ClientState.initial().client,
        ),
      );
}
