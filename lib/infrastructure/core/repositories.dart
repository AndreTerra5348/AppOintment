import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/entity_model_converter.dart';
import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';

abstract class BaseRepository<T_Entity, T_Model extends DataClass>
    implements IRepository<T_Entity> {
  final Dao<T_Model> _dao;
  final EntityModelConverter<T_Entity, T_Model> converter;

  BaseRepository(this._dao, this.converter);

  @override
  Future<Either<RepositoryFailure, T_Entity>> insert(T_Entity entity) async {
    try {
      final companion = converter.toUpdateCompanion(entity);
      final id = await _dao.insert(companion);
      return Right(converter.toEntityWithId(entity, Uid.fromInt(id)));
    } catch (error) {
      return Left(RepositoryFailure.dbException(error: error));
    }
  }
}
