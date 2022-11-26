import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/core/filter.dart';
import 'package:drift/drift.dart';

abstract class Dao<T_Table extends Table, T_Model extends DataClass> {
  T_Table get table;
  Future<int> insert(Insertable<T_Model> model);
  Future<T_Model> getById(Uid uid);
  Future<Iterable<T_Model>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<T_Table, T_Model>? filter});
  Future<bool> updateById(Uid uid, Insertable<T_Model> model);
}
