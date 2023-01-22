/// Drift filter definition
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:drift/drift.dart';

/// Filters a [SimpleSelectStatement] with an [Expression]
abstract class SelectFilter<T_Table extends ModelMixin> {
  /// The [Expression] to filter the [SimpleSelectStatement] with
  Expression<bool> getExpression(T_Table table);
}
