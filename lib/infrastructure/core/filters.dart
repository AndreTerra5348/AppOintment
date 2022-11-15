import 'package:drift/drift.dart';

abstract class SelectFilter<T_Table extends Table, T_Model extends DataClass> {
  SimpleSelectStatement<T_Table, T_Model> call(
      SimpleSelectStatement<T_Table, T_Model> select);
}
