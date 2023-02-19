/// Defines [CreateNameInputWidget]
import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/presentation/client/common/widgets/client_name_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays [NameFormField] and handles [ClientBloc] changes
class CreateNameInputWidget extends StatelessWidget {
  const CreateNameInputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientBloc, ClientState>(
      builder: (context, state) {
        return NameFormField(
          context: context,
        );
      },
    );
  }
}
