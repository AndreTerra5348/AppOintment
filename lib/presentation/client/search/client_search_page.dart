/// Defines [ClientSearchPage]
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/presentation/client/search/widgets/client_search_bar.dart';
import 'package:appointment/presentation/client/search/widgets/client_search_results.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays [ClientSearchBarWidget] and [ClientSearchResultsWidget],
/// provides [ClientSearchBloc]
class ClientSearchPage extends StatelessWidget {
  final ClientSearchBloc bloc;
  const ClientSearchPage({super.key, required this.bloc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(context.tr.pageClientSearchTitle)),
      body: BlocProvider(
        create: (context) =>
            bloc..add(const ClientSearchEvent.fetchRequested()),
        child: Container(
          margin: const EdgeInsets.all(8),
          child: Column(
            children: [
              ClientSearchBarWidget(bloc: bloc),
              const Expanded(child: ClientSearchResultsWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
