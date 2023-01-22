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
import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/client/client_pagination_service.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:appointment/infrastructure/drift/client/client_repository.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/presentation/config/di_config.dart';
import 'package:package_info_plus/package_info_plus.dart';

void mockServicesConfiguration(ClientDao dao,
    {ClientPaginationService? clientPaginationService,
    ClientRepository? clientRepository,
    ClientRegisterValidator? clientRegisterValidator,
    RegisterBloc<Client>? registerBloc,
    ClientSearchBloc? clientSearchBloc,
    LoadBloc<Client>? loadBloc,
    EditBloc<Client>? editBloc,
    DeleteBloc<Client>? deleteBloc,
    DetailsBloc<Client>? detailsBloc,
    ClientBloc? clientBloc,
    PackageInfo? packageInfo}) {
  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(dao);

  getIt.registerSingleton<PaginationService<Client, ClientModels>>(
    clientPaginationService ?? ClientPaginationService(getIt()),
  );

  getIt.registerSingleton<Repository<Client>>(
    clientRepository ?? ClientRepository(getIt()),
  );

  getIt.registerSingleton<RegisterValidator<Client>>(
    clientRegisterValidator ?? ClientRegisterValidator(),
  );

  getIt.registerFactory(
      () => registerBloc ?? RegisterBloc<Client>(getIt(), getIt()));
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
