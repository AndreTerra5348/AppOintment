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
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../application/client/bloc/bloc.dart' as _i10;
import '../../application/client/details/bloc/bloc.dart' as _i15;
import '../../application/client/search/bloc/bloc.dart' as _i7;
import '../../application/delete/bloc/bloc.dart' as _i12;
import '../../application/edit/bloc/bloc.dart' as _i13;
import '../../application/load/bloc/bloc.dart' as _i11;
import '../../application/register/bloc/bloc.dart' as _i8;
import '../../domain/client/entity.dart' as _i9;
import '../../domain/common/values.dart' as _i14;
import '../client/details/page.dart' as _i4;
import '../client/register/page.dart' as _i3;
import '../client/search/page.dart' as _i2;
import '../home/page.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    ClientSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ClientSearchRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ClientSearchPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    ClientRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<ClientRegisterRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ClientRegisterPage(
          key: args.key,
          registerBloc: args.registerBloc,
          clientBloc: args.clientBloc,
        ),
      );
    },
    ClientDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClientDetailsRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.ClientDetailsPage(
          key: args.key,
          loadBloc: args.loadBloc,
          deleteBloc: args.deleteBloc,
          editBloc: args.editBloc,
          clientBloc: args.clientBloc,
          clientId: args.clientId,
          detailsBloc: args.detailsBloc,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          ClientSearchRoute.name,
          path: '/client-search-page',
        ),
        _i5.RouteConfig(
          ClientRegisterRoute.name,
          path: '/client-register-page',
        ),
        _i5.RouteConfig(
          ClientDetailsRoute.name,
          path: '/client-details-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i2.ClientSearchPage]
class ClientSearchRoute extends _i5.PageRouteInfo<ClientSearchRouteArgs> {
  ClientSearchRoute({
    _i6.Key? key,
    required _i7.ClientSearchBloc bloc,
  }) : super(
          ClientSearchRoute.name,
          path: '/client-search-page',
          args: ClientSearchRouteArgs(
            key: key,
            bloc: bloc,
          ),
        );

  static const String name = 'ClientSearchRoute';
}

class ClientSearchRouteArgs {
  const ClientSearchRouteArgs({
    this.key,
    required this.bloc,
  });

  final _i6.Key? key;

  final _i7.ClientSearchBloc bloc;

  @override
  String toString() {
    return 'ClientSearchRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [_i3.ClientRegisterPage]
class ClientRegisterRoute extends _i5.PageRouteInfo<ClientRegisterRouteArgs> {
  ClientRegisterRoute({
    _i6.Key? key,
    required _i8.RegisterBloc<_i9.Client> registerBloc,
    required _i10.ClientBloc clientBloc,
  }) : super(
          ClientRegisterRoute.name,
          path: '/client-register-page',
          args: ClientRegisterRouteArgs(
            key: key,
            registerBloc: registerBloc,
            clientBloc: clientBloc,
          ),
        );

  static const String name = 'ClientRegisterRoute';
}

class ClientRegisterRouteArgs {
  const ClientRegisterRouteArgs({
    this.key,
    required this.registerBloc,
    required this.clientBloc,
  });

  final _i6.Key? key;

  final _i8.RegisterBloc<_i9.Client> registerBloc;

  final _i10.ClientBloc clientBloc;

  @override
  String toString() {
    return 'ClientRegisterRouteArgs{key: $key, registerBloc: $registerBloc, clientBloc: $clientBloc}';
  }
}

/// generated route for
/// [_i4.ClientDetailsPage]
class ClientDetailsRoute extends _i5.PageRouteInfo<ClientDetailsRouteArgs> {
  ClientDetailsRoute({
    _i6.Key? key,
    required _i11.LoadBloc<_i9.Client> loadBloc,
    required _i12.DeleteBloc<_i9.Client> deleteBloc,
    required _i13.EditBloc<_i9.Client> editBloc,
    required _i10.ClientBloc clientBloc,
    required _i14.Uid clientId,
    required _i15.DetailsBloc detailsBloc,
  }) : super(
          ClientDetailsRoute.name,
          path: '/client-details-page',
          args: ClientDetailsRouteArgs(
            key: key,
            loadBloc: loadBloc,
            deleteBloc: deleteBloc,
            editBloc: editBloc,
            clientBloc: clientBloc,
            clientId: clientId,
            detailsBloc: detailsBloc,
          ),
        );

  static const String name = 'ClientDetailsRoute';
}

class ClientDetailsRouteArgs {
  const ClientDetailsRouteArgs({
    this.key,
    required this.loadBloc,
    required this.deleteBloc,
    required this.editBloc,
    required this.clientBloc,
    required this.clientId,
    required this.detailsBloc,
  });

  final _i6.Key? key;

  final _i11.LoadBloc<_i9.Client> loadBloc;

  final _i12.DeleteBloc<_i9.Client> deleteBloc;

  final _i13.EditBloc<_i9.Client> editBloc;

  final _i10.ClientBloc clientBloc;

  final _i14.Uid clientId;

  final _i15.DetailsBloc detailsBloc;

  @override
  String toString() {
    return 'ClientDetailsRouteArgs{key: $key, loadBloc: $loadBloc, deleteBloc: $deleteBloc, editBloc: $editBloc, clientBloc: $clientBloc, clientId: $clientId, detailsBloc: $detailsBloc}';
  }
}
