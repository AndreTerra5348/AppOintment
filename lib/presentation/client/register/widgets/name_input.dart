import 'package:appointment/app_ointment.dart';
import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/domain/common/failures.dart';
import 'package:appointment/domain/common/validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientRegisterBloc, ClientRegisterState>(
      builder: (context, state) {
        return Focus(
          child: TextFormField(
            inputFormatters: [
              FilteringTextInputFormatter.allow(lettersAndAccentsRegex),
            ],
            decoration:
                InputDecoration(labelText: context.tr.nameTextFormField),
            validator: (_) => context
                .read<ClientRegisterBloc>()
                .state
                .name
                .value
                .fold((l) => l.toErrorText(context), (r) => null),
            onChanged: (value) => context
                .read<ClientRegisterBloc>()
                .add(ClientRegisterEvent.nameChanged(name: value)),
          ),
        );
      },
    );
  }
}

extension StringFailureExtension on StringFailure {
  String? toErrorText(BuildContext context) {
    return maybeMap(
      orElse: () => null,
      empty: (value) => context.tr.emptyNameFailure,
    );
  }
}
