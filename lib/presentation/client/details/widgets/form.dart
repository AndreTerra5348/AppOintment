import 'dart:async';

import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/common/form.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/common/widgets/name_input.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/common/failure_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

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
    // Delete Bloc
    return BlocConsumer<DeleteBloc<Client>, DeleteState>(
      listenWhen: (previous, current) => current.isSuccess || current.isFailure,
      listener: (context, deleteState) {
        deleteState.maybeMap(
          orElse: () {},
          success: (_) => _handleSuccess(context),
          failure: (failureState) => _handleFailure(
            context,
            failureState.failure,
          ),
        );
        _timer = Timer(
          const Duration(seconds: 1),
          () {
            Navigator.pop(context);
            if (deleteState.isSuccess) {
              // TODO: Navigate back to previous page
            }
          },
        );
      },
      builder: (context, deleteState) {
        // Details Bloc
        return BlocConsumer<DetailsBloc<Client>, DetailsState<Client>>(
          listenWhen: (previous, current) => current.isSuccess,
          listener: (context, detailsState) {
            detailsState.maybeMap(
              orElse: () {},
              success: (state) => context.load(client: state.entity),
            );
          },
          builder: (context, detailsState) {
            // Edit Bloc
            return BlocConsumer<EditBloc<Client>, EditState>(
              listenWhen: (previous, current) =>
                  current.isSuccess || current.isFailure,
              listener: (context, editState) {
                editState.maybeMap(
                  orElse: () {},
                  success: (_) => _handleSuccess(context),
                  failure: (failureStatus) => _handleFailure(
                    context,
                    failureStatus.failure,
                  ),
                );
                _timer = Timer(
                  const Duration(seconds: 1),
                  () => Navigator.pop(context),
                );
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
                                NameInputWidget(isEditing: editState.isEditing),
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
      onPressed: () => _buildDeleteDialog(context),
      child: const Icon(Icons.delete),
    );
  }

  void _buildDeleteDialog(BuildContext context) {
    Dialogs.materialDialog(
      context: context,
      msg: context.tr.deleteConfirmation(
        context.client.name.getOrThrow(),
      ),
      actions: [
        IconsButton(
          onPressed: () => Navigator.pop(context),
          text: context.tr.cancel,
          iconData: Icons.cancel,
        ),
        IconsButton(
          onPressed: () {
            Navigator.pop(context);
            context.deleted(id: context.client.id);
          },
          text: context.tr.delete,
          iconData: Icons.delete,
        ),
      ],
    );
  }

  ElevatedButton _buildCancelButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.cancelPressed();
        context.reaload(id: context.client.id);
      },
      child: const Icon(Icons.cancel),
    );
  }

  ElevatedButton _buildSaveButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        context.savePressed(
          client: context.client,
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

  _handleSuccess(BuildContext context) {
    context.reaload(id: context.client.id);
    showDialog(
      context: context,
      builder: (_) => const Icon(Icons.check_circle_outline),
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

  Client get client => clientBloc.state.client;

  void reaload({required Uid id}) =>
      detailsBloc.add(DetailsEvent.loaded(id: id));

  void load({required Client client}) =>
      clientBloc.add(ClientEvent.loaded(client: client));

  void editPressed() => editBloc.add(const EditEvent.editPressed());

  void cancelPressed() => editBloc.add(const EditEvent.cancelPressed());

  void savePressed({required Client client}) =>
      editBloc.add(EditEvent.savePressed(entity: client));

  void deleted({required Uid id}) =>
      deleteBloc.add(DeleteEvent.deleted(id: id));
}
