import 'package:appointment/domain/common/values.dart';
import 'package:drift/drift.dart';

abstract class Dao<T_Model extends DataClass> {
  Future<int> insert(Insertable<T_Model> model);
  Future<T_Model> getByUid(Uid uid);
}
