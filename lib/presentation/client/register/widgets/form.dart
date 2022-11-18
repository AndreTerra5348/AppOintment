import 'dart:async';

import 'package:appointment/app_ointment.dart';
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
  final _formKey = GlobalKey<FormState>();
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientRegisterBloc, ClientRegisterState>(
      listenWhen: (previous, current) =>
          current.submissionStatus.isFailure ||
          current.submissionStatus.isSuccess,
      listener: (context, state) {
        state.submissionStatus.maybeMap(
          orElse: () {},
          success: (_) => _handleSuccess(context),
          failure: (failureStatus) =>
              _handleFailure(context, failureStatus.failure),
        );
        _timer =
            Timer(const Duration(seconds: 1), () => Navigator.pop(context));
      },
      builder: (context, state) {
        return Form(
          key: _formKey,
          autovalidateMode: state.submissionStatus.isFailure
              ? AutovalidateMode.always
              : AutovalidateMode.onUserInteraction,
          child: Stack(
            children: [
              Column(
                children: [
                  const NameInputWidget(),
                  ElevatedButton(
                    onPressed: () => context
                        .read<ClientRegisterBloc>()
                        .add(const ClientRegisterEvent.submitted()),
                    child: const Icon(Icons.add_circle),
                  )
                ],
              ),
              if (state.submissionStatus.isInProgress)
                const CircularProgressIndicator(value: null)
            ],
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

extension SubmissionFailureExtension on SubmissionFailure {
  String toErrorText(BuildContext context) {
    return map(
      repository: (value) => context.tr.databaseFailure(value.failure.error),
      invalidField: (value) => context.tr.invalidFieldsFailure,
    );
  }
}
