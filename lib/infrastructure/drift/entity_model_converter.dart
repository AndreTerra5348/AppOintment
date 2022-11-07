import 'package:appointment/domain/common/uid.dart';
import 'package:drift/drift.dart';
import 'package:appointment/domain/client/client.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

abstract class EntityModelConverter<T_Entity, T_Model extends DataClass> {
  T_Entity toEntity(T_Model model);
  T_Entity toEntityWithId(T_Entity entity, Uid id);
  UpdateCompanion<T_Model> toUpdateCompanion(T_Entity entity);
}

class ClientConveter extends EntityModelConverter<Client, ClientModel> {
  @override
  Client toEntity(ClientModel model) =>
      Client(name: Name(model.name), id: Uid.fromInt(model.id));

  @override
  ClientModelsCompanion toUpdateCompanion(Client entity) {
    return ClientModelsCompanion.insert(name: entity.name.getOrCrash());
  }

  @override
  Client toEntityWithId(Client entity, Uid id) {
    return entity.copyWith(id: id);
  }
}
