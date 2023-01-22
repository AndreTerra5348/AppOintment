/// Drift pagination service definitions
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_service.freezed.dart';

/// Provides a contract for pagination services for a [Dao]
abstract class PaginationService<T_Entity, T_Table extends ModelMixin> {
  /// Get a page of models
  /// [limit] is the number of models to return
  /// [offset] is the number of models to skip
  /// [filter] is a [SelectFilter] to filter the models
  /// Returns a [PaginationServiceFailure] if the operation fails
  /// Returns a [Iterable] of [T_Entity] if the operation succeeds
  Future<Either<PaginationServiceFailure, Iterable<T_Entity>>> getPage(
      {required int limit, required int offset, SelectFilter<T_Table>? filter});
}

/// [PaginationService] failures
@freezed
class PaginationServiceFailure with _$PaginationServiceFailure {
  /// Database exception
  const factory PaginationServiceFailure.dbException({required Object error}) =
      _GetPageDbException;
}
