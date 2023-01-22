/// Drift generic DAO contract
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

mixin Dao<T_Table extends ModelMixin, T_Model extends DataClass>
    on DatabaseAccessor<DriftDb> {
  /// Get a [SimpleSelectStatement] for the table
  /// with optional [SelectFilter]
  SimpleSelectStatement<T_Table, T_Model> getSelect(
      {SelectFilter<T_Table>? filter});

  /// Get a [InsertStatement] for the table
  InsertStatement<T_Table, T_Model> getInsert();

  /// Get a [UpdateStatement] for the table
  UpdateStatement<T_Table, T_Model> getUpdate();

  /// Get a [DeleteStatement] for the table
  DeleteStatement<T_Table, T_Model> getDelete();

  /// Insert a [model] into the table
  /// Returns the [id] of the inserted model
  Future<int> insert(Insertable<T_Model> model) {
    return getInsert().insert(model);
  }

  /// Get all [models] from the table
  /// Returns a [List] of [models]
  Future<List<T_Model>> getAll() {
    return getSelect().get();
  }

  /// Get a [model] by [SelectFilter] e.g [IdentifierFilter]
  /// Returns the [model] if found, otherwise throws [Error]
  Future<T_Model> getByFilter(SelectFilter<T_Table> filter) {
    return getSelect(filter: filter).getSingle();
  }

  /// Save a [model] by [SelectFilter] e.g [IdentifierFilter]
  /// Returns true if the model was updated, otherwise false
  Future<bool> save(SelectFilter<T_Table> filter, Insertable<T_Model> model) {
    return (getUpdate()..where(filter.getExpression))
        .write(model)
        .then((value) => value > 0);
  }

  /// Remove a [model] by [SelectFilter] e.g [IdentifierFilter]
  /// Returns true if the model was removed, otherwise false
  Future<bool> remove(SelectFilter<T_Table> filter) {
    return (getDelete()..where(filter.getExpression))
        .go()
        .then((value) => value > 0);
  }
}
