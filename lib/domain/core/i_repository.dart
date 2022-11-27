import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_repository.freezed.dart';

abstract class IRepository<T extends EntityMixin> {
  Future<Either<RepositoryFailure, T>> insert(T entity);
  Future<Either<RepositoryFailure, bool>> update(T entity);
  Future<Either<RepositoryFailure, T>> getById(Uid id);
  Future<Either<RepositoryFailure, bool>> delete(Uid id);
}

@freezed
class RepositoryFailure with _$RepositoryFailure {
  const factory RepositoryFailure.dbException({required Object error}) =
      _DBException;
  const factory RepositoryFailure.notFound() = _NotFound;
}
