/// Defines [ClientSearchResultsWidget]
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/config/route_config.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Displays a [ListView] of [Client]s and handles [ClientSearchBloc] changes.
/// Fetches more [Client]s when the user scrolls to the bottom of the list.
/// Navigates to [ClientDetailsPage] when a [Client] is tapped.
class ClientSearchResultsWidget extends StatefulWidget {
  const ClientSearchResultsWidget({super.key});

  @override
  State<ClientSearchResultsWidget> createState() =>
      _ClientSearchResultsWidgetState();
}

class _ClientSearchResultsWidgetState extends State<ClientSearchResultsWidget>
    with WidgetsBindingObserver {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ClientSearchBloc, ClientSearchState>(
      listenWhen: (previous, current) => current.status.maybeMap(
        orElse: () => false,
        success: (_) => current.term.isEmpty,
      ),
      listener: (context, state) => _fetchMorePostFrame(),
      builder: (context, state) {
        return BlocBuilder<ClientSearchBloc, ClientSearchState>(
          builder: (context, state) {
            return state.status.map(
              loading: (_) => const Center(child: CircularProgressIndicator()),
              empty: (_) => Center(child: Text(context.tr.noResultsFound)),
              success: (_) => ListView.builder(
                itemCount: state.clients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => context
                        .pushDetailsPage(state.getId(index))
                        .then((_) => context.refreshRequested()),
                    leading: Text(
                      state.getId(index).getOrThrow().toString(),
                    ),
                    title: Text(
                      state.getName(index).getOrThrow(),
                    ),
                  );
                },
                controller: _scrollController,
              ),
              failure: (failureStatus) => Center(
                child: Text(failureStatus.failure.toErrorText(context)),
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _scrollController
      ..removeListener(_onScroll)
      ..dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    _fetchMorePostFrame();
  }

  /// Fetches more [Client]s when the user scrolls to the bottom of the list
  void _onScroll() {
    _fetchMore();
  }

  /// Registers a [PostFrameCallback] to fetch more [Client]s
  /// when there's not envough clients to fill the screen
  void _fetchMorePostFrame() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _fetchMore();
    });
  }

  /// Fetches more [Client]s
  void _fetchMore() {
    if (_isBottom) {
      context.fetchRequested();
    }
  }

  /// Returns true if the user has scrolled to the bottom of the list
  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    return _scrollController.position.extentAfter == 0;
  }
}

/// Converts a [PaginationServiceFailure] to a [String]
extension on PaginationServiceFailure {
  String toErrorText(BuildContext context) {
    return map(dbException: (value) => context.tr.databaseFailure(value.error));
  }
}

/// Shortcuts for [ClientSearchBloc] events
extension on BuildContext {
  ClientSearchBloc get searchBloc => read<ClientSearchBloc>();

  void fetchRequested() => searchBloc.add(
        const ClientSearchEvent.fetchRequested(),
      );

  void refreshRequested() => searchBloc.add(
        const ClientSearchEvent.refreshRequested(),
      );

  Future<T?> pushDetailsPage<T extends Object?>(Identifier id) => pushRoute<T>(
        router.getClientDetailsRoute(id: id),
      );
}

/// Shortcuts for [ClientSearchState] properties
extension on ClientSearchState {
  Identifier getId(int index) => clients.elementAt(index).id;
  Name getName(int index) => clients.elementAt(index).name;
}
