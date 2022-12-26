import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/client/client_table.dart';
import 'package:appointment/infrastructure/common/type_converters.dart';
import 'package:drift/drift.dart';

part 'db.g.dart';

@DriftDatabase(tables: [ClientModels])
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}
