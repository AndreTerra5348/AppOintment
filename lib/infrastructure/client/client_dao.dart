import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/infrastructure/client/client_models.dart';
import 'package:appointment/infrastructure/core/dao.dart';
import 'package:appointment/infrastructure/drift/app_db.dart';
import 'package:drift/drift.dart';

part 'client_dao.g.dart';

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
