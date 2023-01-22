/// Common filters for Drift
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:drift/drift.dart';

/// Filters a [SimpleSelectStatement] by the [Identifier]
class IdentifierFilter<T_Table extends ModelMixin>
    extends SelectFilter<T_Table> {
  final Identifier _identifier;
  IdentifierFilter(this._identifier);

  @override
  Expression<bool> getExpression(T_Table table) {
    return table.id.equals(_identifier.getOrThrow());
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IdentifierFilter &&
          runtimeType == other.runtimeType &&
          _identifier == other._identifier;

  @override
  int get hashCode => _identifier.hashCode;
}

/// Extension methods for [Identifier]
extension IdentifierEx on Identifier {
  /// Returns a [IdentifierFilter] for this [Identifier]
  IdentifierFilter<T_Table> toFilter<T_Table extends ModelMixin>() {
    return IdentifierFilter<T_Table>(this);
  }
}
