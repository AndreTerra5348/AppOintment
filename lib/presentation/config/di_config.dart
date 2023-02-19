/// Defines dependency injection configuration
// This file is used for configuration only, it should not be tested
// coverage:ignore-file
import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/client/create/client_create_validator.dart';
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/application/create/bloc/create_bloc.dart';
import 'package:appointment/application/create/create_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/client/client_converter.dart';
import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/client/client_pagination_service.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/entity_converter.dart';
import 'package:appointment/infrastructure/drift/common/entity_repository.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/infrastructure/drift/executor/executor_factory.dart'
    as executor_factory;
import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

/// Instantiates [GetIt] globally
final getIt = GetIt.instance;

/// Creates all dependencies
void servicesConfiguration() {
  getIt.registerSingleton<QueryExecutor>(
    executor_factory.create(),
  );

  getIt.registerSingleton(DriftDb(executor: getIt()));

  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(
    ClientDao(getIt()),
  );

  getIt.registerSingleton<EntityConverter<ClientModel, Client>>(
    ClientConverter(),
  );

  getIt.registerSingleton<PaginationService<Client, ClientModels>>(
    ClientPaginationService(getIt(), getIt()),
  );

  getIt.registerSingleton<Repository<Client>>(
    EntityRepository<ClientModel, ClientModels, Client>(getIt(), getIt()),
  );

  getIt.registerSingleton<CreateValidator<Client>>(
    ClientCreateValidator(),
  );

  getIt.registerFactory(() => CreateBloc<Client>(getIt(), getIt()));
  getIt.registerFactory(() => ClientSearchBloc(getIt()));

  getIt.registerFactory(() => LoadBloc<Client>(getIt()));
  getIt.registerFactory(() => EditBloc<Client>(getIt()));
  getIt.registerFactory(() => DeleteBloc<Client>(getIt()));
  getIt.registerFactory(() => DetailsBloc<Client>());
  getIt.registerFactory(() => ClientBloc());

  getIt.registerSingletonAsync<PackageInfo>(
    () async => PackageInfo.fromPlatform(),
    signalsReady: true,
  );
}
