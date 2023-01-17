/// Drift DAO contract
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:drift/drift.dart';

/// Access Drift database tables to store and manage data
abstract class Dao<T_Table extends Table, T_Model extends DataClass> {
  /// Drift [DataClass] table
  T_Table get table;

  /// Insert a new model into the database
  Future<int> insert(Insertable<T_Model> model);

  /// Get a model by its [Identifier]
  Future<T_Model> getById(Identifier uid);

  /// Get a page of models
  /// [limit] is the number of models to return
  /// [offset] is the number of models to skip
  /// [filter] is a [SelectFilter] to filter the models
  Future<Iterable<T_Model>> getPage(
      {required int limit,
      required int offset,
      SelectFilter<T_Table, T_Model>? filter});

  /// Save changes to a model in the database
  /// [uid] is the [Identifier] of the model to update
  /// [model] is the [Insertable] or [UpdateCompanion] to update the model with
  Future<bool> save(Identifier uid, Insertable<T_Model> model);

  /// Delete a model from the database
  Future<bool> remove(Identifier uid);
}
