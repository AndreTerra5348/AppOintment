import 'package:appointment/presentation/client/register/page.dart';
import 'package:appointment/presentation/client/search/page.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(page: ClientSearchPage, initial: true),
    AutoRoute(page: ClientRegisterPage),
  ],
)
class $AppRouter {}
