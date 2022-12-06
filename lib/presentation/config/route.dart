import 'package:appointment/domain/common/values.dart';
import 'package:appointment/presentation/client/details/page.dart';
import 'package:appointment/presentation/client/register/page.dart';
import 'package:appointment/presentation/client/search/page.dart';
import 'package:appointment/presentation/config/di.dart';
import 'package:appointment/presentation/config/route.gr.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: ClientSearchPage, initial: true),
    AutoRoute(page: ClientRegisterPage),
    AutoRoute(page: ClientDetailsPage),
  ],
)
class $AppRouter {}

extension AppRouterX on StackRouter {
  ClientSearchRoute get clientSearchRoute => ClientSearchRoute(bloc: getIt());
  ClientRegisterRoute get clientRegisterRoute =>
      ClientRegisterRoute(registerBloc: getIt(), clientBloc: getIt());
  ClientDetailsRoute getClientDetailsRoute({required Uid id}) =>
      ClientDetailsRoute(
        clientId: id,
        detailsBloc: getIt(),
        deleteBloc: getIt(),
        editBloc: getIt(),
        clientBloc: getIt(),
      );

  void pushClientDetailsPage({required Uid id}) =>
      push(getClientDetailsRoute(id: id));

  void pushClientRegisterPage() => push(clientRegisterRoute);

  void pushClientSearchPage() => push(clientSearchRoute);
}
