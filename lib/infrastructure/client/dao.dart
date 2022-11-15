import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';

part 'dao.g.dart';

@DriftAccessor(tables: [ClientModels])
class ClientDao extends DatabaseAccessor<DriftDb>
    with _$ClientDaoMixin
    implements Dao<ClientModel> {
  ClientDao(super.attachedDatabase);

  @override
  Future<int> insert(Insertable<ClientModel> model) {
    return into(clientModels).insert(model);
  }

  @override
  Future<ClientModel> getByUid(Uid uid) {
    return (select(clientModels)
          ..where((tbl) => tbl.id.equals(uid.getOrThrow())))
        .getSingle();
  }

  @override
  Future<int> count({Expression<bool>? filter, bool distinct = false}) async {
    final countExp = countAll(filter: filter);
    final query = selectOnly(clientModels, distinct: distinct)
      ..addColumns([countExp]);
    final row = await query.getSingle();
    return row.read(countExp) ?? 0;
  }
}
