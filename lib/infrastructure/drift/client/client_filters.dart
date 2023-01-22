/// Drift filters for [ClientModels]
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

/// Filters [SimpleSelectStatement] by the [ClientModel.name]
class ClientNameFilter implements SelectFilter<ClientModels> {
  /// The name to filter by
  final String _name;

  ClientNameFilter(this._name);

  @override
  Expression<bool> getExpression(ClientModels table) =>
      table.name.contains(_name);
}
