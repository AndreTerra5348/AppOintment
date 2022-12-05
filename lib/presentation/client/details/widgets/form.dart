import 'dart:async';

import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/common/widgets/name_input.dart';
import 'package:appointment/presentation/common/failure_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ClientDetailsFormWidget extends StatefulWidget {
  const ClientDetailsFormWidget({super.key});

  @override
  State<ClientDetailsFormWidget> createState() =>
      _ClientDetailsFormWidgetState();
}

class _ClientDetailsFormWidgetState extends State<ClientDetailsFormWidget> {
  Timer? _timer;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DeleteBloc<Client>, DeleteState>(
      listener: (context, deleteState) {
        // TODO: implement listener
      },
      builder: (context, deleteState) {
        return BlocConsumer<DetailsBloc<Client>, DetailsState<Client>>(
          listenWhen: (previous, current) => current.isSuccess,
          listener: (context, detailsState) {
            detailsState.maybeMap(
              orElse: () {},
              success: (state) => context.load(client: state.entity),
            );
          },
          builder: (context, detailsState) {
            return BlocConsumer<EditBloc<Client>, EditState>(
              listenWhen: (previous, current) =>
                  current.isSuccess || current.isFailure,
              listener: (context, editState) {
                editState.maybeMap(
                  orElse: () {},
                  success: (_) => _handleEditSuccess(
                    context,
                    context.clientBloc.state.client,
                  ),
                  failure: (failureStatus) => _handleFailure(
                    context,
                    failureStatus.failure,
                  ),
                );
                _timer = Timer(
                    const Duration(seconds: 1), () => Navigator.pop(context));
              },
              builder: (context, editState) {
                return detailsState.isLoading
                    ? const CircularProgressIndicator(value: null)
                    : Form(
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                Row(
                                  children: context.isEditing
                                      ? [
                                          _buildSaveButton(context),
                                          _buildCancelButton(context)
                                        ]
                                      : [
                                          _buildEditButton(context),
                                          _buildDeleteButton(context)
                                        ],
                                ),
                                const NameInputWidget(isEditing: false),
                              ],
                            ),
                            if (editState.isInProgress ||
                                deleteState.isInProgress)
                              const CircularProgressIndicator(value: null)
                          ],
                        ),
                      );
              },
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  ElevatedButton _buildEditButton(BuildContext context) {
    return ElevatedButton(
      onPressed: context.editPressed,
      child: const Icon(Icons.edit),
    );
  }

  ElevatedButton _buildDeleteButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.deleted(
        id: context.clientBloc.state.client.id,
      ),
      child: const Icon(Icons.delete),
    );
  }

  ElevatedButton _buildCancelButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () => context.reaload(
        id: context.clientBloc.state.client.id,
      ),
      child: const Icon(Icons.cancel),
    );
  }

  ElevatedButton _buildSaveButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.savePressed(
          client: context.clientBloc.state.client,
        );
      },
      child: const Icon(Icons.save),
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

  _handleEditSuccess(BuildContext context, Client client) {
    context.reaload(id: client.id);

    showDialog(
      context: context,
      builder: (_) => Column(
        children: const [
          Icon(Icons.check_circle_outline),
          // TODO: Add this entry to arb file
          Text("context.tr.editSuccess(client.name)"),
        ],
      ),
    );
  }
}

extension on BuildContext {
  DetailsBloc<Client> get detailsBloc =>
      BlocProvider.of<DetailsBloc<Client>>(this);

  EditBloc<Client> get editBloc => BlocProvider.of<EditBloc<Client>>(this);

  ClientBloc get clientBloc => BlocProvider.of<ClientBloc>(this);

  DeleteBloc<Client> get deleteBloc =>
      BlocProvider.of<DeleteBloc<Client>>(this);

  bool get isEditing => editBloc.state.isEditing;

  void reaload({required Uid id}) =>
      detailsBloc.add(DetailsEvent.loaded(id: id));

  void load({required Client client}) =>
      clientBloc.add(ClientEvent.loaded(client: client));

  void editPressed() => editBloc.add(const EditEvent.editPressed());

  void savePressed({required Client client}) =>
      editBloc.add(EditEvent.savePressed(entity: client));

  void deleted({required Uid id}) =>
      deleteBloc.add(DeleteEvent.deleted(id: id));
}
