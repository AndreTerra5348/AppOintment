import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/core/filters.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';

class ClientNameFilter implements SelectFilter<ClientModels, ClientModel> {
  final String _name;

  ClientNameFilter(this._name);

  @override
  SimpleSelectStatement<ClientModels, ClientModel> call(
      SimpleSelectStatement<ClientModels, ClientModel> select) {
    return select..where((tbl) => tbl.name.equals(_name));
  }
}
