import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/core/repository.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';

class DriftRepository<T_Entity extends EntityMixin, T_Table extends Table,
    T_Model extends DataClass> implements Repository<T_Entity> {
  final Dao<T_Table, T_Model> _dao;
  final EntityModelConverter<T_Entity, T_Model> _converter;

  DriftRepository(this._dao, this._converter);

  @override
  Future<Either<RepositoryFailure, T_Entity>> insert(T_Entity entity) async {
    try {
      final companion = _converter.toUpdateCompanion(entity);
      final id = await _dao.insert(companion);
      return Right(_converter.toEntityWithId(entity, Uid.fromInt(id)));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  @override
  Future<Either<RepositoryFailure, bool>> update(T_Entity entity) async {
    try {
      final companion = _converter.toUpdateCompanion(entity);
      return Right(await _dao.save(entity.id, companion));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  @override
  Future<Either<RepositoryFailure, T_Entity>> getById(Uid id) async {
    try {
      final model = await _dao.getById(id);
      return Right(_converter.toEntity(model));
    } on StateError catch (error) {
      return Left(RepositoryFailure.notFound(error: error));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }

  @override
  Future<Either<RepositoryFailure, bool>> delete(Uid id) async {
    try {
      return Right(await _dao.remove(id));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }
}
