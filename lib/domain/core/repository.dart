/// Contains repository related classes.

import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

/// The interface repository for entities.
abstract class Repository<T extends EntityMixin> {
  /// Inserts an entity into the repository.
  Future<Either<RepositoryFailure, T>> insert(T entity);

  /// Updates an entity in the repository.
  Future<Either<RepositoryFailure, bool>> update(T entity);

  /// Returns an entity from the repository by its [id].
  Future<Either<RepositoryFailure, T>> getById(Uid id);

  /// Deletes an entity from the repository by its [id].
  Future<Either<RepositoryFailure, bool>> delete(Uid id);
}

/// The failures of the repository.
@freezed
class RepositoryFailure with _$RepositoryFailure {
  /// Database related failures.
  const factory RepositoryFailure.dbException({required Object error}) =
      _DBException;

  /// The entity was not found.
  const factory RepositoryFailure.notFound({required Object error}) = _NotFound;
}
