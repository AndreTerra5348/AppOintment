import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/presentation/common/build_context_extensions.dart';
import 'package:appointment/presentation/config/di.dart';
import 'package:appointment/presentation/config/route.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  void _onScroll() {
    _fetchMore();
  }

  void _fetchMorePostFrame() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _fetchMore();
    });
  }

  void _fetchMore() {
    if (_isBottom) {
      context.fetchRequested();
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    return _scrollController.position.extentAfter == 0;
  }
}

extension on PageServiceFailure {
  String toErrorText(BuildContext context) {
    return map(dbException: (value) => context.tr.databaseFailure(value.error));
  }
}

extension on BuildContext {
  ClientSearchBloc get searchBloc => read<ClientSearchBloc>();

  void fetchRequested() => searchBloc.add(
        const ClientSearchEvent.fetchRequested(),
      );

  void refreshRequested() => searchBloc.add(
        const ClientSearchEvent.refreshRequested(),
      );

  Future<T?> pushDetailsPage<T extends Object?>(Uid id) => pushRoute<T>(
        router.getClientDetailsRoute(id: id),
      );
}

extension on ClientSearchState {
  Uid getId(int index) => clients.elementAt(index).id;
  Name getName(int index) => clients.elementAt(index).name;
}
