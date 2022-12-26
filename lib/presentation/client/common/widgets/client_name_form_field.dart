import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appointment/domain/common/common_validators.dart' as validators;
import 'package:flutter_bloc/flutter_bloc.dart';

/// [NameFormField] depends on [ClientBloc]
class NameFormField extends TextFormField {
  NameFormField({
    super.key,
    super.initialValue,
    super.enabled,
    required BuildContext context,
  }) : super(
          inputFormatters: [
            FilteringTextInputFormatter.deny(
              validators.notLettersAndAccentsRegex,
            ),
          ],
          decoration: InputDecoration(
            labelText: context.tr.nameTextFormField,
          ),
          validator: (_) => context.client.name.value.fold(
            (failure) => failure.toErrorText(context),
            (_) => null,
          ),
          onChanged: (value) => context.nameChanged(name: value),
        );
}

extension StringFailureExtension on StringFailure {
  String? toErrorText(BuildContext context) {
    return maybeMap(
      orElse: () => null,
      empty: (value) => context.tr.emptyNameFailure,
    );
  }
}

extension on BuildContext {
  Client get client => read<ClientBloc>().state.client;
  void nameChanged({required String name}) =>
      read<ClientBloc>().add(ClientEvent.nameChanged(name: name));
}
