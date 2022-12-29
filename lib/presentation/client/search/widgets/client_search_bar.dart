/// Defines [ClientSearchBarWidget]
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';

/// Displays [TextFormField] and handles [ClientSearchBloc] changes
class ClientSearchBarWidget extends StatelessWidget {
  // TODO: get the bloc by context
  final ClientSearchBloc bloc;
  const ClientSearchBarWidget({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: context.tr.searchTextFormFieldHint,
      ),
      onChanged: (value) => bloc.add(
        ClientSearchEvent.termChanged(term: value),
      ),
    );
  }
}
