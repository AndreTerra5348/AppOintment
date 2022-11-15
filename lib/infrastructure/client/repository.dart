import 'package:appointment/domain/client/entity.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/repositories.dart';
import 'package:appointment/infrastructure/drift/db.dart';

class ClientRepository
    extends BaseRepository<Client, ClientModels, ClientModel> {
  ClientRepository(super.dao, super.converter);
}
