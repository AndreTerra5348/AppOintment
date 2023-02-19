import 'package:appointment/application/client/bloc/client_bloc.dart';
import 'package:appointment/application/client/create/client_create_validator.dart';
import 'package:appointment/application/client/search/bloc/client_search_bloc.dart';
import 'package:appointment/application/delete/bloc/delete_bloc.dart';
import 'package:appointment/application/details/bloc/details_bloc.dart';
import 'package:appointment/application/load/bloc/load_bloc.dart';
import 'package:appointment/application/edit/bloc/edit_bloc.dart';
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
import 'package:appointment/presentation/config/di_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

void mockServicesConfiguration(ClientDao dao,
    {ClientPaginationService? clientPaginationService,
    EntityRepository<ClientModel, ClientModels, Client>? clientRepository,
    EntityConverter<ClientModel, Client>? clientConverter,
    ClientCreateValidator? clientCreateValidator,
    CreateBloc<Client>? createBloc,
    ClientSearchBloc? clientSearchBloc,
    LoadBloc<Client>? loadBloc,
    EditBloc<Client>? editBloc,
    DeleteBloc<Client>? deleteBloc,
    DetailsBloc<Client>? detailsBloc,
    ClientBloc? clientBloc,
    PackageInfo? packageInfo}) {
  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(dao);

  getIt.registerSingleton<EntityConverter<ClientModel, Client>>(
    clientConverter ?? ClientConverter(),
  );

  getIt.registerSingleton<PaginationService<Client, ClientModels>>(
    clientPaginationService ?? ClientPaginationService(getIt(), getIt()),
  );

  getIt.registerSingleton<Repository<Client>>(
    clientRepository ??
        EntityRepository<ClientModel, ClientModels, Client>(getIt(), getIt()),
  );

  getIt.registerSingleton<CreateValidator<Client>>(
    clientCreateValidator ?? ClientCreateValidator(),
  );

  getIt.registerFactory(
      () => createBloc ?? CreateBloc<Client>(getIt(), getIt()));
  getIt.registerFactory(() => clientSearchBloc ?? ClientSearchBloc(getIt()));

  getIt.registerFactory(() => loadBloc ?? LoadBloc<Client>(getIt()));
  getIt.registerFactory(() => editBloc ?? EditBloc<Client>(getIt()));
  getIt.registerFactory(() => deleteBloc ?? DeleteBloc<Client>(getIt()));
  getIt.registerFactory(() => detailsBloc ?? DetailsBloc<Client>());
  getIt.registerFactory(() => clientBloc ?? ClientBloc());

  getIt.registerSingletonAsync<PackageInfo>(
    () async =>
        packageInfo ??
        PackageInfo(
          appName: "",
          packageName: "",
          version: "1.0.0",
          buildNumber: "1",
        ),
    signalsReady: true,
  );
}

Future<void> reset() async {
  await getIt.reset();
}
