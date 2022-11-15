import 'package:appointment/infrastructure/client/dao.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/drift/db.dart';
import 'package:drift/drift.dart';

abstract class SelectFilter<T_Table extends Table, T_Model extends DataClass> {
  Expression<bool> get countFilter;
  SimpleSelectStatement<T_Table, T_Model> call(
      SimpleSelectStatement<T_Table, T_Model> select);
}

class ClientNameFilter implements SelectFilter<ClientModels, ClientModel> {
  final ClientDao _dao;
  final String _name;

  ClientNameFilter(this._dao, this._name);

  @override
  Expression<bool> get countFilter => _dao.clientModels.name.equals(_name);

  @override
  SimpleSelectStatement<ClientModels, ClientModel> call(
      SimpleSelectStatement<ClientModels, ClientModel> select) {
    return select..where((tbl) => tbl.name.equals(_name));
  }
}
