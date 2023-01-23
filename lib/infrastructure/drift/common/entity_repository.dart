/// Drift [EntityRepository] definition
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/common/entity_converter.dart';
import 'package:appointment/infrastructure/drift/common/filters.dart';
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';

/// Generic repository for entitites CRUD operations
class EntityRepository<T_Model extends DataClass, T_Table extends ModelMixin,
    T_Entity extends EntityMixin> implements Repository<T_Entity> {
  final Dao<T_Table, T_Model> _dao;
  final EntityConverter<T_Model, T_Entity> _converter;

  EntityRepository(this._dao, this._converter);

  /// Delete the entity by its [Identifier]
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, bool>> delete(Identifier id) async {
    try {
      return Right(await _dao.remove(id.toFilter()));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Get the entity by its [Identifier]
  /// Returns [RepositoryFailure.notFound] if there is no entity with the [Identifier]
  /// Returns [RepositoryFailure.dbException] if there is any other exception
  @override
  Future<Either<RepositoryFailure, T_Entity>> getById(Identifier id) async {
    try {
      final model = await _dao.getByFilter(id.toFilter());
      return Right(_converter.toEntity(model));
    } on StateError catch (error) {
      return Left(RepositoryFailure.notFound(error: error));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Insert entity into the database
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, T_Entity>> insert(T_Entity entity) async {
    try {
      final companion = _converter.toCompanion(entity);
      final id = await _dao.insert(companion);
      final entityWithId = _converter.copyWithId(
        entity,
        Identifier.fromInt(id),
      );
      return Right(entityWithId);
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Update entity in the database
  /// Returns [RepositoryFailure.dbException] if there is any exception
  @override
  Future<Either<RepositoryFailure, bool>> update(T_Entity entity) async {
    try {
      final companion = _converter.toCompanion(entity);
      return Right(
        await _dao.save(entity.id.toFilter(), companion),
      );
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }
}
