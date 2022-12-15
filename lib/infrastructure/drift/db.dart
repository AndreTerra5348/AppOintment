import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/common/type_converter.dart';
import 'package:drift/drift.dart';

part 'db.g.dart';

@DriftDatabase(tables: [ClientModels])
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}
