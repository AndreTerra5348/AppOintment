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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../application/client/bloc/bloc.dart' as _i9;
import '../../application/client/search/bloc/bloc.dart' as _i6;
import '../../application/delete/bloc/bloc.dart' as _i11;
import '../../application/details/bloc/bloc.dart' as _i10;
import '../../application/edit/bloc/bloc.dart' as _i12;
import '../../application/register/bloc/bloc.dart' as _i7;
import '../../domain/client/entity.dart' as _i8;
import '../../domain/common/values.dart' as _i13;
import '../client/details/page.dart' as _i3;
import '../client/register/page.dart' as _i2;
import '../client/search/page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ClientSearchRoute.name: (routeData) {
      final args = routeData.argsAs<ClientSearchRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i1.ClientSearchPage(
          key: args.key,
          bloc: args.bloc,
        ),
      );
    },
    ClientRegisterRoute.name: (routeData) {
      final args = routeData.argsAs<ClientRegisterRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ClientRegisterPage(
          key: args.key,
          registerBloc: args.registerBloc,
          clientBloc: args.clientBloc,
        ),
      );
    },
    ClientDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ClientDetailsRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.ClientDetailsPage(
          key: args.key,
          detailsBloc: args.detailsBloc,
          deleteBloc: args.deleteBloc,
          editBloc: args.editBloc,
          clientBloc: args.clientBloc,
          clientId: args.clientId,
        ),
      );
    },
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(
          ClientSearchRoute.name,
          path: '/',
        ),
        _i4.RouteConfig(
          ClientRegisterRoute.name,
          path: '/client-register-page',
        ),
        _i4.RouteConfig(
          ClientDetailsRoute.name,
          path: '/client-details-page',
        ),
      ];
}

/// generated route for
/// [_i1.ClientSearchPage]
class ClientSearchRoute extends _i4.PageRouteInfo<ClientSearchRouteArgs> {
  ClientSearchRoute({
    _i5.Key? key,
    required _i6.ClientSearchBloc bloc,
  }) : super(
          ClientSearchRoute.name,
          path: '/',
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

  final _i5.Key? key;

  final _i6.ClientSearchBloc bloc;

  @override
  String toString() {
    return 'ClientSearchRouteArgs{key: $key, bloc: $bloc}';
  }
}

/// generated route for
/// [_i2.ClientRegisterPage]
class ClientRegisterRoute extends _i4.PageRouteInfo<ClientRegisterRouteArgs> {
  ClientRegisterRoute({
    _i5.Key? key,
    required _i7.RegisterBloc<_i8.Client> registerBloc,
    required _i9.ClientBloc clientBloc,
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

  final _i5.Key? key;

  final _i7.RegisterBloc<_i8.Client> registerBloc;

  final _i9.ClientBloc clientBloc;

  @override
  String toString() {
    return 'ClientRegisterRouteArgs{key: $key, registerBloc: $registerBloc, clientBloc: $clientBloc}';
  }
}

/// generated route for
/// [_i3.ClientDetailsPage]
class ClientDetailsRoute extends _i4.PageRouteInfo<ClientDetailsRouteArgs> {
  ClientDetailsRoute({
    _i5.Key? key,
    required _i10.DetailsBloc<_i8.Client> detailsBloc,
    required _i11.DeleteBloc<_i8.Client> deleteBloc,
    required _i12.EditBloc<_i8.Client> editBloc,
    required _i9.ClientBloc clientBloc,
    required _i13.Uid clientId,
  }) : super(
          ClientDetailsRoute.name,
          path: '/client-details-page',
          args: ClientDetailsRouteArgs(
            key: key,
            detailsBloc: detailsBloc,
            deleteBloc: deleteBloc,
            editBloc: editBloc,
            clientBloc: clientBloc,
            clientId: clientId,
          ),
        );

  static const String name = 'ClientDetailsRoute';
}

class ClientDetailsRouteArgs {
  const ClientDetailsRouteArgs({
    this.key,
    required this.detailsBloc,
    required this.deleteBloc,
    required this.editBloc,
    required this.clientBloc,
    required this.clientId,
  });

  final _i5.Key? key;

  final _i10.DetailsBloc<_i8.Client> detailsBloc;

  final _i11.DeleteBloc<_i8.Client> deleteBloc;

  final _i12.EditBloc<_i8.Client> editBloc;

  final _i9.ClientBloc clientBloc;

  final _i13.Uid clientId;

  @override
  String toString() {
    return 'ClientDetailsRouteArgs{key: $key, detailsBloc: $detailsBloc, deleteBloc: $deleteBloc, editBloc: $editBloc, clientBloc: $clientBloc, clientId: $clientId}';
  }
}
