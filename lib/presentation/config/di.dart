// This file is used for configuration only, it should not be tested
// coverage:ignore-file
import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/client/register/validator.dart';
import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/application/register/bloc/bloc.dart';
import 'package:appointment/application/register/validator.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/core/page_service.dart';
import 'package:appointment/infrastructure/core/repositories.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:appointment/infrastructure/drift/executor_provider.dart'
    as executor_provider;
import 'package:drift/drift.dart';
import 'package:get_it/get_it.dart';
import 'package:package_info_plus/package_info_plus.dart';

final getIt = GetIt.instance;

void servicesConfiguration() {
  getIt.registerSingleton<QueryExecutor>(
    executor_provider.getQueryExecutor(),
  );

  getIt.registerSingleton(DriftDb(executor: getIt()));

  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(
    ClientDao(getIt()),
  );

  getIt.registerSingleton<EntityModelConverter<Client, ClientModel>>(
    ClientConveter(),
  );

  getIt.registerSingleton<PageService<Client, ClientModels, ClientModel>>(
    DriftPageService<Client, ClientModels, ClientModel>(getIt(), getIt()),
  );

  getIt.registerSingleton<Repository<Client>>(
    DriftRepository<Client, ClientModels, ClientModel>(getIt(), getIt()),
  );

  getIt.registerSingleton<RegisterValidator<Client>>(
    ClientRegisterValidator(),
  );

  getIt.registerFactory(() => RegisterBloc<Client>(getIt(), getIt()));
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
