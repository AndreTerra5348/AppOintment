import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'i_repository.freezed.dart';

abstract class IRepository<T> {
  Future<Either<RepositoryFailure, T>> insert(T entity);
  Future<Either<RepositoryFailure, bool>> update(T entity);
}

@freezed
class RepositoryFailure with _$RepositoryFailure {
  const factory RepositoryFailure.dbException({required Object error}) =
      _DBException;
  const factory RepositoryFailure.notFound() = _NotFound;
}
