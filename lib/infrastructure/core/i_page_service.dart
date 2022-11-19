import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:dartz/dartz.dart';
// Incompatibility with json annotation
import 'package:drift/drift.dart' as drift;
import 'package:freezed_annotation/freezed_annotation.dart';

import 'entity_model_converter.dart';

part 'i_page_service.freezed.dart';

abstract class IPageService<T_Entity, T_Table extends drift.Table,
    T_Model extends drift.DataClass> {
  Future<Either<PageServiceFailure, Iterable<T_Entity>>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<T_Table, T_Model>? filter});
}

abstract class BasePageService<T_Entity, T_Table extends drift.Table,
        T_Model extends drift.DataClass>
    extends IPageService<T_Entity, T_Table, T_Model> {
  final Dao<T_Table, T_Model> _dao;
  final EntityModelConverter<T_Entity, T_Model> _converter;

  BasePageService(this._dao, this._converter);

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
      return Left(PageServiceFailure.getPageDbException(error: error));
    }
  }
}

@freezed
class PageServiceFailure with _$PageServiceFailure {
  const factory PageServiceFailure.countDbException({required Object error}) =
      _CountDbException;
  const factory PageServiceFailure.getPageDbException({required Object error}) =
      _GetPageDbException;
}
