/// Drift [Repository] definition

import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';

/// [Drift] [Repository] implementation
/// - Convert exceptions to [RepositoryFailure]
/// - Returns Entities
/// - Depends on a [Dao] and [EntityModelConverter]
class DriftRepository<T_Entity extends EntityMixin, T_Table extends Table,
    T_Model extends DataClass> implements Repository<T_Entity> {
  /// Drift [Dao] to access the database
  final Dao<T_Table, T_Model> _dao;

  /// Drift [EntityModelConverter] to convert between [T_Entity] and [T_Model]
  final EntityModelConverter<T_Entity, T_Model> _converter;

  /// Create a [DriftRepository] with a [Dao] and [EntityModelConverter]
  DriftRepository(this._dao, this._converter);

  /// Get a [T_Entity] by its [Identifier]
  /// Returns a [RepositoryFailure] if there is an exception
  /// otherwise returns the [T_Entity]
  @override
  Future<Either<RepositoryFailure, T_Entity>> insert(T_Entity entity) async {
    try {
      final companion = _converter.toUpdateCompanion(entity);
      final id = await _dao.insert(companion);
      return Right(_converter.toEntityWithId(entity, Identifier.fromInt(id)));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Update a [T_Entity] in the database
  /// Returns a [RepositoryFailure] if there is an exception
  /// Returns false if the [T_Entity] was not found
  /// otherwise returns true
  @override
  Future<Either<RepositoryFailure, bool>> update(T_Entity entity) async {
    try {
      final companion = _converter.toUpdateCompanion(entity);
      return Right(await _dao.save(entity.id, companion));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Get a [T_Entity] by its [Identifier]
  /// Returns a [RepositoryFailure.notFound] if the [T_Entity] is not found
  /// Returns a [RepositoryFailure.dbException] if there any other exception
  /// otherwise returns the [T_Entity]
  @override
  Future<Either<RepositoryFailure, T_Entity>> getById(Identifier id) async {
    try {
      final model = await _dao.getById(id);
      return Right(_converter.toEntity(model));
    } on StateError catch (error) {
      return Left(RepositoryFailure.notFound(error: error));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  /// Delete a [T_Entity] by its [Identifier]
  /// Returns a [RepositoryFailure] if there is an exception
  /// Returns false if the [T_Entity] was not found
  /// otherwise returns true
  @override
  Future<Either<RepositoryFailure, bool>> delete(Identifier id) async {
    try {
      return Right(await _dao.remove(id));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }
}
