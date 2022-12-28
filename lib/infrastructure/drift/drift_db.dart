/// Drift database definition
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/type_converters.dart';
import 'package:drift/drift.dart';

part 'drift_db.g.dart';

/// Drift database configuration
@DriftDatabase(tables: [ClientModels])
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}
