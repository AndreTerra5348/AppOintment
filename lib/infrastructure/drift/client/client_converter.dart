/// Drift ClientConverter definition
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

/// Converts between [Client] and [ClientModel]
class ClientConveter extends EntityModelConverter<Client, ClientModel> {
  /// Converts a [ClientModel] to a [Client]
  @override
  Client toEntity(ClientModel model) {
    return Client(name: model.name, id: model.id);
  }

  /// Converts a [Client] to a [ClientModel] with an [Uid]
  @override
  Client toEntityWithId(Client entity, Uid id) {
    return entity.copyWith(id: id);
  }

  /// Converts a [Client] to a [ClientModelsCompanion]
  /// for use in an insert statement
  @override
  ClientModelsCompanion toUpdateCompanion(Client entity) {
    return ClientModelsCompanion.insert(name: entity.name);
  }
}
