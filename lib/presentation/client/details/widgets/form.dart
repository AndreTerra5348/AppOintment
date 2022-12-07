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
import 'package:auto_route/auto_route.dart';
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
    // Delete Bloc
    return BlocListener<DeleteBloc<Client>, DeleteState>(
      listenWhen: (previous, current) => current.isSuccess || current.isFailure,
      listener: (context, state) {
        state.maybeMap(
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
            if (state.isSuccess) {
              context.router.pop();
            }
          },
        );
      },
      // Edit Bloc
      child: BlocConsumer<EditBloc<Client>, EditState>(
        listenWhen: (previous, current) =>
            current.isSuccess || current.isFailure,
        listener: (editXontext, editState) {
          editState.maybeMap(
            orElse: () {},
            success: (_) => _handleSuccess(editXontext),
            failure: (failureStatus) => _handleFailure(
              editXontext,
              failureStatus.failure,
            ),
          );
          _timer = Timer(
            const Duration(seconds: 1),
            () => Navigator.pop(editXontext),
          );
        },
        builder: (editContext, editState) {
          // Details Bloc
          return BlocConsumer<DetailsBloc<Client>, DetailsState<Client>>(
            listenWhen: (previous, current) => current.isSuccess,
            listener: (detailsContext, detailsState) {
              detailsState.maybeMap(
                orElse: () {},
                success: (successState) => detailsContext.load(
                  client: successState.entity,
                ),
              );
            },
            builder: (detailsContext, detailsState) {
              return Form(
                child: Stack(
                  children: [
                    Column(
                      children: [
                        NameInputWidget(
                          isEditing: editState.isEditing,
                        ),
                      ],
                    ),
                    if (detailsState.isLoading)
                      const CircularProgressIndicator(value: null)
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
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

  ClientBloc get clientBloc => BlocProvider.of<ClientBloc>(this);

  Client get client => clientBloc.state.client;

  void reaload({required Uid id}) =>
      detailsBloc.add(DetailsEvent.loaded(id: id));

  void load({required Client client}) =>
      clientBloc.add(ClientEvent.loaded(client: client));
}
