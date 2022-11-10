import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientRegisterBloc, ClientRegisterState>(
      builder: (context, state) {
        return Focus(
          child: TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            decoration: const InputDecoration(labelText: "Name"),
            validator: (_) =>
                state.form.name.value.fold((l) => l.toErrorText(), (r) => null),
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
  String? toErrorText() {
    return maybeMap(
      orElse: () => null,
      empty: (value) => "Name cannot be empty",
    );
  }
}
