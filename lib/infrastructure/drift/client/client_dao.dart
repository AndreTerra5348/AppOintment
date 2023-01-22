/// Drift ClientDao definition
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

part 'client_dao.g.dart';

/// Access Drift database tables to store and manage [ClientModel]s
/// stored in the [ClientModels] table
@DriftAccessor(tables: [ClientModels])
class ClientDao extends DatabaseAccessor<DriftDb>
    with _$ClientDaoMixin, Dao<ClientModels, ClientModel> {
  ClientDao(super.attachedDatabase);

  @override
  SimpleSelectStatement<ClientModels, ClientModel> getSelect(
      {SelectFilter<ClientModels>? filter}) {
    if (filter == null) {
      return select(clientModels);
    }

    return select(clientModels)..where(filter.getExpression);
  }

  @override
  DeleteStatement<ClientModels, ClientModel> getDelete() {
    return delete(clientModels);
  }

  @override
  InsertStatement<ClientModels, ClientModel> getInsert() {
    return into(clientModels);
  }

  @override
  UpdateStatement<ClientModels, ClientModel> getUpdate() {
    return update(clientModels);
  }
}
