import 'package:appointment/application/client/register/bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({
    super.key,
  });

  static const nameTextFormKey = Key("name");

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientRegisterBloc, ClientRegisterState>(
      builder: (context, state) => TextFormField(
        key: nameTextFormKey,
        initialValue:
            state.form.nameInput.value.value.fold((l) => "", (r) => r),
        decoration: const InputDecoration(labelText: "Name"),
        onChanged: ((value) {
          context
              .read<ClientRegisterBloc>()
              .add(ClientRegisterEvent.nameChanged(name: value));
        }),
      ),
    );
  }
}
