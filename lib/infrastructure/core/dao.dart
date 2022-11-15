import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/core/filters.dart';
import 'package:drift/drift.dart';

abstract class Dao<T_Table extends Table, T_Model extends DataClass> {
  Future<int> insert(Insertable<T_Model> model);
  Future<T_Model> getByUid(Uid uid);
  Future<int> count({Expression<bool>? filter, bool distinct = false});
  Future<Iterable<T_Model>> getPage(
      {required int page,
      required int size,
      SelectFilter<T_Table, T_Model>? filter});
}
