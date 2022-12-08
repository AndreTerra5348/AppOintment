import 'package:appointment/application/client/bloc/bloc.dart';
import 'package:appointment/application/client/register/validator.dart';
import 'package:appointment/application/client/search/bloc/bloc.dart';
import 'package:appointment/application/delete/bloc/bloc.dart';
import 'package:appointment/application/details/bloc/bloc.dart';
import 'package:appointment/application/load/bloc/bloc.dart';
import 'package:appointment/application/edit/bloc/bloc.dart';
import 'package:appointment/application/register/bloc/bloc.dart';
import 'package:appointment/application/register/validator.dart';
import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/core/i_page_service.dart';
import 'package:appointment/infrastructure/core/repositories.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:appointment/presentation/config/di.dart';

void mockServicesConfiguration(ClientDao dao) {
  getIt.registerSingleton<Dao<ClientModels, ClientModel>>(dao);

  getIt.registerSingleton<EntityModelConverter<Client, ClientModel>>(
      ClientConveter());

  getIt.registerSingleton<IPageService<Client, ClientModels, ClientModel>>(
      DriftPageService<Client, ClientModels, ClientModel>(getIt(), getIt()));

  getIt.registerSingleton<IRepository<Client>>(
      DriftRepository<Client, ClientModels, ClientModel>(getIt(), getIt()));

  getIt.registerSingleton<RegisterValidator<Client>>(ClientRegisterValidator());

  getIt.registerFactory(() => RegisterBloc<Client>(getIt(), getIt()));
  getIt.registerFactory(() => ClientSearchBloc(getIt()));

  getIt.registerFactory(() => LoadBloc<Client>(getIt()));
  getIt.registerFactory(() => EditBloc<Client>(getIt()));
  getIt.registerFactory(() => DeleteBloc<Client>(getIt()));
  getIt.registerFactory(() => DetailsBloc<Client>());
  getIt.registerFactory(() => ClientBloc());
}
