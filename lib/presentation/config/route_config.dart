/// Defines routing configuration
// This file is used for configuration only, it should not be tested
// coverage:ignore-file
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/presentation/client/details/client_details_page.dart';
import 'package:appointment/presentation/client/register/client_create_page.dart';
import 'package:appointment/presentation/client/search/client_search_page.dart';
import 'package:appointment/presentation/config/di_config.dart';
import 'package:appointment/presentation/config/route_config.gr.dart';
import 'package:appointment/presentation/home/home_page.dart';
import 'package:auto_route/auto_route.dart';

/// Configures [AutoRoute] router
@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: HomePage, initial: true),
    AutoRoute(page: ClientSearchPage),
    AutoRoute(page: ClientCreatePage),
    AutoRoute(page: ClientDetailsPage),
  ],
)
class $AppRouter {}

/// Shortcuts for navigation with [GetIt] dependency
extension StackRouterX on StackRouter {
  ClientSearchRoute get clientSearchRoute => ClientSearchRoute(bloc: getIt());
  ClientCreateRoute get clientCreateRoute =>
      ClientCreateRoute(registerBloc: getIt(), clientBloc: getIt());
  ClientDetailsRoute getClientDetailsRoute({required Identifier id}) =>
      ClientDetailsRoute(
        clientId: id,
        loadBloc: getIt(),
        deleteBloc: getIt(),
        editBloc: getIt(),
        clientBloc: getIt(),
        detailsBloc: getIt(),
      );

  void pushClientDetailsPage({required Identifier id}) =>
      push(getClientDetailsRoute(id: id));

  void pushClientCreatePage() => push(clientCreateRoute);

  void pushClientSearchPage() => push(clientSearchRoute);
}
