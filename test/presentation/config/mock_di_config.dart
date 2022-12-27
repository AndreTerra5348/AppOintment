import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/client/register/client_register_validator.dart';
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
import 'package:appointment/application/register/bloc/register_bloc.dart';
import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/client/client_converter.dart';
import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/drift/core/page_service.dart';
import 'package:appointment/infrastructure/drift/core/drift_repository.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/presentation/config/di_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

void mockServicesConfiguration(ClientDao dao) {
  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(dao);

  getIt.registerSingleton<EntityModelConverter<Client, ClientModel>>(
      ClientConveter());

  getIt.registerSingleton<PageService<Client, ClientModels, ClientModel>>(
      DriftPageService<Client, ClientModels, ClientModel>(getIt(), getIt()));

  getIt.registerSingleton<Repository<Client>>(
      DriftRepository<Client, ClientModels, ClientModel>(getIt(), getIt()));

  getIt.registerSingleton<RegisterValidator<Client>>(ClientRegisterValidator());

  getIt.registerFactory(() => RegisterBloc<Client>(getIt(), getIt()));
  getIt.registerFactory(() => ClientSearchBloc(getIt()));

  getIt.registerFactory(() => LoadBloc<Client>(getIt()));
  getIt.registerFactory(() => EditBloc<Client>(getIt()));
  getIt.registerFactory(() => DeleteBloc<Client>(getIt()));
  getIt.registerFactory(() => DetailsBloc<Client>());
  getIt.registerFactory(() => ClientBloc());

  getIt.registerSingletonAsync<PackageInfo>(
    () async => PackageInfo(
      appName: "",
      packageName: "",
      version: "1.0.0",
      buildNumber: "1",
    ),
    signalsReady: true,
  );
}
