/// Drift ClientDao definition
import 'package:appointment/domain/common/common_values.dart';
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
    with _$ClientDaoMixin
    implements Dao<ClientModels, ClientModel> {
  ClientDao(super.attachedDatabase);

  @override
  ClientModels get table => clientModels;

  @override
  Future<int> insert(Insertable<ClientModel> model) {
    return into(clientModels).insert(model);
  }

  @override
  Future<ClientModel> getById(Identifier uid) {
    return (select(clientModels)
          ..where((tbl) => tbl.id.equals(uid.getOrThrow())))
        .getSingle();
  }

  @override
  Future<Iterable<ClientModel>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<ClientModels, ClientModel>? filter}) {
    return filter == null
        ? (select(clientModels)..limit(limit, offset: offset)).get()
        : (filter(select(clientModels))..limit(limit, offset: offset)).get();
  }

  @override
  Future<bool> save(Identifier uid, Insertable<ClientModel> model) {
    return (update(clientModels)
          ..where((tbl) => tbl.id.equals(uid.getOrThrow())))
        .write(model)
        .then((value) => value > 0);
  }

  @override
  Future<bool> remove(Identifier uid) {
    return (delete(clientModels)
          ..where((tbl) => tbl.id.equals(uid.getOrThrow())))
        .go()
        .then((value) => value > 0);
  }
}
