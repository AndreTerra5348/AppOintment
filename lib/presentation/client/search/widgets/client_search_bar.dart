/// Defines [ClientSearchBarWidget]
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays [TextFormField] and handles [ClientSearchBloc] changes
class ClientSearchBarWidget extends StatelessWidget {
  const ClientSearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: context.tr.searchTextFormFieldHint,
      ),
      onChanged: (value) => context.read<ClientSearchBloc>().add(
            ClientSearchEvent.termChanged(term: value),
          ),
    );
  }
}
