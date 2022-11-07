import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/drift/dao.dart';
import 'package:appointment/domain/client/client.dart';
import 'package:dartz/dartz.dart';

abstract class BaseRepository<T_Entity, T_Table>
    implements IRepository<T_Entity> {
  final Dao<T_Table> _dao;

  BaseRepository(this._dao);
}

class ClientRepository extends BaseRepository<Client, ClientModel> {
  ClientRepository(super.dao);

  @override
  Future<Either<RepositoryFailure, Client>> insert(Client entity) async {
    try {
      var id = await _dao.insert(toModel(entity));
      return Right(entity.copyWith(id: Uid.fromInt(id)));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  Client toEntity(ClientModel model) {
    return Client(name: Name(model.name), id: Uid.fromInt(model.id));
  }

  ClientModel toModel(Client client) {
    return ClientModel((client.name.value as Right).value, 0);
  }
}
