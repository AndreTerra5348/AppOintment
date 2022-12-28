/// Drift pagination service definitions
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:dartz/dartz.dart';
// Incompatibility with json annotation
import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity_model_converter.dart';

part 'page_service.freezed.dart';

/// Provides a contract for pagination services for a [Dao]
abstract class PageService<T_Entity, T_Table extends drift.Table,
    T_Model extends drift.DataClass> {
  /// Get a page of models
  /// [limit] is the number of models to return
  /// [offset] is the number of models to skip
  /// [filter] is a [SelectFilter] to filter the models
  /// Returns a [PageServiceFailure] if the operation fails
  /// Returns a [Iterable] of [T_Entity] if the operation succeeds
  Future<Either<PageServiceFailure, Iterable<T_Entity>>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<T_Table, T_Model>? filter});
}

/// Implements a [PageService] for a [Dao]
class DriftPageService<T_Entity, T_Table extends drift.Table,
        T_Model extends drift.DataClass>
    extends PageService<T_Entity, T_Table, T_Model> {
  /// Drift DAO to access the database
  final Dao<T_Table, T_Model> _dao;

  /// Drift EntityModelConverter to convert between [Entity] and [Model]
  final EntityModelConverter<T_Entity, T_Model> _converter;

  DriftPageService(this._dao, this._converter);

  @override
  Future<Either<PageServiceFailure, Iterable<T_Entity>>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<T_Table, T_Model>? filter}) async {
    try {
      final result =
          await _dao.getPage(limit: limit, offset: offset, filter: filter);
      return Right(result.map(_converter.toEntity));
    } catch (error) {
      return Left(PageServiceFailure.dbException(error: error));
    }
  }
}

/// [PageService] failures
@freezed
class PageServiceFailure with _$PageServiceFailure {
  /// Database exception
  const factory PageServiceFailure.dbException({required Object error}) =
      _GetPageDbException;
}
