import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/entity_converter.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:dartz/dartz.dart';

/// Implements a [PaginationService] for a [Dao]
class ClientPaginationService extends PaginationService<Client, ClientModels> {
  /// Drift DAO to access the database
  final Dao<ClientModels, ClientModel> _dao;
  final EntityConverter<ClientModel, Client> _converter;

  ClientPaginationService(this._dao, this._converter);

  @override
  Future<Either<PaginationServiceFailure, Iterable<Client>>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<ClientModels>? filter}) async {
    try {
      final select = _dao.getSelect(filter: filter)
        ..limit(limit, offset: offset);
      final result = await select.get();
      return Right(result.map((model) => _converter.toEntity(model)));
    } catch (error) {
      return Left(PaginationServiceFailure.dbException(error: error));
    }
  }
}
