/// Drift filter definition
import 'package:drift/drift.dart';

/// Filters a [SimpleSelectStatement] with an [Expression]
abstract class SelectFilter<T_Table extends Table, T_Model extends DataClass> {
  /// The [Expression] to filter the [SimpleSelectStatement] with
  Expression<bool> getExpression(T_Table table);

  /// Calls the [SimpleSelectStatement] with the filter
  SimpleSelectStatement<T_Table, T_Model> call(
      SimpleSelectStatement<T_Table, T_Model> select);
}
