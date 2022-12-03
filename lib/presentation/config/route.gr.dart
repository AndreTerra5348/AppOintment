// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../application/client/bloc/bloc.dart' as _i8;
import '../../application/client/search/bloc/bloc.dart' as _i5;
import '../../application/register/bloc/bloc.dart' as _i6;
import '../../domain/client/entity.dart' as _i7;
import '../client/register/page.dart' as _i2;
import '../client/search/page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ClientSearchPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientSearchPageRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.ClientSearchPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    ClientRegisterPageRoute.name: (routeData) {
      final args = routeData.argsAs<ClientRegisterPageRouteArgs>();
      return _i3.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ClientRegisterPage(
          key: args.key,
          registerBloc: args.registerBloc,
          clientBloc: args.clientBloc,
        ),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          ClientSearchPageRoute.name,
          path: '/',
        ),
        _i3.RouteConfig(
          ClientRegisterPageRoute.name,
          path: '/client-register-page',
        ),
      ];
}

/// generated route for
/// [_i1.ClientSearchPage]
class ClientSearchPageRoute
    extends _i3.PageRouteInfo<ClientSearchPageRouteArgs> {
  ClientSearchPageRoute({
    _i4.Key? key,
    required _i5.ClientSearchBloc bloc,
  }) : super(
          ClientSearchPageRoute.name,
          path: '/',
          args: ClientSearchPageRouteArgs(
            key: key,
            bloc: bloc,
          ),
        );

  static const String name = 'ClientSearchPageRoute';
}

class ClientSearchPageRouteArgs {
  const ClientSearchPageRouteArgs({
    this.key,
    required this.bloc,
  });

  final _i4.Key? key;

  final _i5.ClientSearchBloc bloc;

  @override
  String toString() {
    return 'ClientSearchPageRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [_i2.ClientRegisterPage]
class ClientRegisterPageRoute
    extends _i3.PageRouteInfo<ClientRegisterPageRouteArgs> {
  ClientRegisterPageRoute({
    _i4.Key? key,
    required _i6.RegisterBloc<_i7.Client> registerBloc,
    required _i8.ClientBloc clientBloc,
  }) : super(
          ClientRegisterPageRoute.name,
          path: '/client-register-page',
          args: ClientRegisterPageRouteArgs(
            key: key,
            registerBloc: registerBloc,
            clientBloc: clientBloc,
          ),
        );

  static const String name = 'ClientRegisterPageRoute';
}

class ClientRegisterPageRouteArgs {
  const ClientRegisterPageRouteArgs({
    this.key,
    required this.registerBloc,
    required this.clientBloc,
  });

  final _i4.Key? key;

  final _i6.RegisterBloc<_i7.Client> registerBloc;

  final _i8.ClientBloc clientBloc;

  @override
  String toString() {
    return 'ClientRegisterPageRouteArgs{key: $key, registerBloc: $registerBloc, clientBloc: $clientBloc}';
  }
}
