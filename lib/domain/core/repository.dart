/// Repository related classes.
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'repository.freezed.dart';

/// Stores and manage a collection of [EntityMixin].
abstract class Repository<T extends EntityMixin> {
  /// Inserts an entity into the repository.
  /// Either returns a [RepositoryFailure] or the inserted entity.
  Future<Either<RepositoryFailure, T>> insert(T entity);

  /// Updates an entity in the repository.
  /// Either returns a [RepositoryFailure] or a boolean indicating success.
  Future<Either<RepositoryFailure, bool>> update(T entity);

  /// Returns an entity from the repository by its [id].
  /// Either returns a [RepositoryFailure] or the entity.
  Future<Either<RepositoryFailure, T>> getById(Uid id);

  /// Deletes an entity from the repository by its [id].
  /// Either returns a [RepositoryFailure] or a boolean indicating success.
  Future<Either<RepositoryFailure, bool>> delete(Uid id);
}

/// Repository failures.
@freezed
class RepositoryFailure with _$RepositoryFailure {
  /// Database related failures.
  const factory RepositoryFailure.dbException({required Object error}) =
      _DBException;

  /// The entity was not found.
  const factory RepositoryFailure.notFound({required Object error}) = _NotFound;
}
