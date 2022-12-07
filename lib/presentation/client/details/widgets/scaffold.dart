import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/widgets/form.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_dialogs/material_dialogs.dart';
import 'package:material_dialogs/widgets/buttons/icon_button.dart';

class ClientDetailsPageScaffold extends StatelessWidget {
  const ClientDetailsPageScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditBloc<Client>, EditState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              title: Text(context.tr.pageClientDetailsTitle),
              actions: _buildActions(context, state.isEditing)),
          body: const ClientDetailsFormWidget(),
        );
      },
    );
  }

  List<Widget> _buildActions(BuildContext context, bool isEditing) {
    return isEditing
        ? [
            IconButton(
              icon: const Icon(Icons.save),
              onPressed: () => context.savePressed(client: context.client),
            ),
            IconButton(
              icon: const Icon(Icons.cancel),
              onPressed: () {
                context.cancelPressed();
                context.reaload(id: context.client.id);
              },
            ),
          ]
        : [
            IconButton(
              icon: const Icon(Icons.edit),
              onPressed: context.editPressed,
            ),
            IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () => _handleDelete(context),
            ),
          ];
  }

  _handleDelete(BuildContext context) {
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
}

extension on BuildContext {
  DetailsBloc<Client> get detailsBloc =>
      BlocProvider.of<DetailsBloc<Client>>(this);

  EditBloc<Client> get editBloc => BlocProvider.of<EditBloc<Client>>(this);

  ClientBloc get clientBloc => BlocProvider.of<ClientBloc>(this);

  DeleteBloc<Client> get deleteBloc =>
      BlocProvider.of<DeleteBloc<Client>>(this);

  Client get client => clientBloc.state.client;

  void reaload({required Uid id}) =>
      detailsBloc.add(DetailsEvent.loaded(id: id));

  void editPressed() => editBloc.add(const EditEvent.editPressed());

  void cancelPressed() => editBloc.add(const EditEvent.cancelPressed());

  void savePressed({required Client client}) =>
      editBloc.add(EditEvent.savePressed(entity: client));

  void deleted({required Uid id}) =>
      deleteBloc.add(DeleteEvent.deleted(id: id));
}
