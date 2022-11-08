import 'package:appointment/domain/client/client.dart';
import 'package:appointment/infrastructure/core/repositories.dart';
import 'package:appointment/infrastructure/drift/app_db.dart';

class ClientRepository extends BaseRepository<Client, ClientModel> {
  ClientRepository(super.dao, super.converter);
}
