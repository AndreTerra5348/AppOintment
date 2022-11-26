import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';

part 'dao.g.dart';

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
  Future<ClientModel> getById(Uid uid) {
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
  Future<bool> updateById(Uid uid, Insertable<ClientModel> model) {
    return (update(clientModels)
          ..where((tbl) => tbl.id.equals(uid.getOrThrow())))
        .write(model)
        .then((value) => value > 0);
  }
}
