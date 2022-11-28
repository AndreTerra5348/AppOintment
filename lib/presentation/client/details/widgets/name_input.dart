import 'package:appointment/application/client/details/bloc/bloc.dart';
import 'package:appointment/application/client/details/edit/bloc/bloc.dart';
import 'package:appointment/presentation/app_ointment.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NameInputWidget extends StatelessWidget {
  const NameInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ClientDetailsBloc, ClientDetailsState>(
      builder: (context, detailsState) {
        return BlocBuilder<ClientDetailsEditBloc, ClientDetailsEditState>(
          builder: (context, editState) {
            return TextFormField(
              initialValue: detailsState.client.name.getOrThrow(),
              decoration: InputDecoration(
                labelText: context.tr.nameTextFormField,
              ),
              enabled: editState.isEditing,
            );
          },
        );
      },
    );
  }
}
