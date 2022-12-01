import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/presentation/app_ointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInputWidget extends StatelessWidget {
  final bool isEditing;
  const NameInputWidget({super.key, required this.isEditing});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientDetailsBloc, ClientDetailsState>(
      builder: (context, state) {
        return TextFormField(
          initialValue: state.client.name.getOrThrow(),
          decoration: InputDecoration(
            labelText: context.tr.nameTextFormField,
          ),
          enabled: isEditing,
        );
      },
    );
  }
}
