/// Drift [Repository] definition

import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/client/client_dao.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/filters.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:dartz/dartz.dart';

/// [Client] [Drift] [Repository] implementation
/// - Convert exceptions to [RepositoryFailure]
/// - Returns Entities
/// - Depends on a [ClientDao]
class ClientRepository implements Repository<Client> {
  final Dao<ClientModels, ClientModel> _dao;

  ClientRepository(this._dao);

  /// Delete [Client] by its [Identifier]
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, bool>> delete(Identifier id) async {
    try {
      return Right(await _dao.remove(id.toFilter()));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Get [Client] by its [Identifier]
  /// Returns [RepositoryFailure.notFound] if there is no [Client] with the [Identifier]
  /// Returns [RepositoryFailure.dbException] if there is any other exception
  @override
  Future<Either<RepositoryFailure, Client>> getById(Identifier id) async {
    try {
      final model = await _dao.getByFilter(id.toFilter());
      return Right(model.toEntity());
    } on StateError catch (error) {
      return Left(RepositoryFailure.notFound(error: error));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Insert [Client] into the database
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, Client>> insert(Client entity) async {
    try {
      final companion = entity.toInsertCompanion();
      final id = await _dao.insert(companion);
      return Right(entity.copyWith(id: Identifier.fromInt(id)));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Update [Client] in the database
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, bool>> update(Client entity) async {
    try {
      final companion = entity.toInsertCompanion();
      return Right(
        await _dao.save(entity.id.toFilter(), companion),
      );
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }
}
