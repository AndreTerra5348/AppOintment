// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:drift/drift.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../application/client/bloc/bloc.dart' as _i3;
import '../../infrastructure/drift/db.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final queryExecutorProvider = _$QueryExecutorProvider();
  gh.factory<_i3.ClientBloc>(() => _i3.ClientBloc());
  gh.factory<_i4.QueryExecutor>(() => queryExecutorProvider.nativeDB);
  gh.factory<_i5.DriftDb>(
      () => _i5.DriftDb(executor: get<_i4.QueryExecutor>()));
  return get;
}

class _$QueryExecutorProvider extends _i5.QueryExecutorProvider {}
