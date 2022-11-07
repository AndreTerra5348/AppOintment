import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:appointment/infrastructure/drift/tables.dart';
import 'package:drift/drift.dart';

part 'dao.g.dart';

abstract class Dao<T_Model extends DataClass> {
  Future<int> insert(Insertable<T_Model> model);
  Future<T_Model> getByUid(Uid uid);
}

@DriftAccessor(tables: [ClientModels])
class ClientDao extends DatabaseAccessor<AppDb>
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
          ..where((tbl) => tbl.id.equals(uid.getOrCrash())))
        .getSingle();
  }
}
