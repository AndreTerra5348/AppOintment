import 'package:appointment/domain/client/client.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/infrastructure/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/drift/app_db.dart';

class ClientConveter extends EntityModelConverter<Client, ClientModel> {
  @override
  Client toEntity(ClientModel model) =>
      Client(name: Name(model.name), id: Uid.fromInt(model.id));

  @override
  Client toEntityWithId(Client entity, Uid id) {
    return entity.copyWith(id: id);
  }

  @override
  ClientModelsCompanion toUpdateCompanion(Client entity) {
    return ClientModelsCompanion.insert(name: entity.name.getOrCrash());
  }
}
