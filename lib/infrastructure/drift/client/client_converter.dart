import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/common/entity_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

class ClientConverter extends EntityConverter<ClientModel, Client> {
  @override
  Client copyWithId(Client entity, Identifier id) {
    return entity.copyWith(id: id);
  }

  @override
  ClientModelsCompanion toCompanion(Client entity) {
    return ClientModelsCompanion.insert(name: entity.name);
  }

  @override
  Client toEntity(ClientModel model) {
    return Client(name: model.name, id: model.id);
  }
}
