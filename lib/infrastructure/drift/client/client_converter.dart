import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

class ClientConveter extends EntityModelConverter<Client, ClientModel> {
  @override
  Client toEntity(ClientModel model) => Client(name: model.name, id: model.id);

  @override
  Client toEntityWithId(Client entity, Uid id) {
    return entity.copyWith(id: id);
  }

  @override
  ClientModelsCompanion toUpdateCompanion(Client entity) {
    return ClientModelsCompanion.insert(name: entity.name);
  }

  @override
  ClientModel toModel(Client entity) {
    return ClientModel(id: entity.id, name: entity.name);
  }
}
