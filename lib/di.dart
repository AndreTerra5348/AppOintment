import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/client/converter.dart';
import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/repository.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:get_it/get_it.dart';

import 'infrastructure/core/entity_model_converter.dart';

final services = GetIt.instance;

void diConfiguration() {
  services.registerSingleton<DriftDb>(
      DriftDb(executor: QueryExecutorProvider.getNativeDB()));

  services.registerSingleton<Dao<ClientModel>>(ClientDao(services<DriftDb>()));

  services.registerSingleton<EntityModelConverter<Client, ClientModel>>(
      ClientConveter());

  services.registerSingleton<IRepository<Client>>(ClientRepository(
      services<Dao<ClientModel>>(),
      services<EntityModelConverter<Client, ClientModel>>()));
}
