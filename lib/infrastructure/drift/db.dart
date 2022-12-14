import 'dart:io';

import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:appointment/infrastructure/client/table.dart';
import 'package:appointment/infrastructure/common/type_converter.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

part 'db.g.dart';

@DriftDatabase(tables: [ClientModels])
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}

class QueryExecutorProvider {
  static QueryExecutor get nativeDB => LazyDatabase(() async {
        final dbFolder = await getApplicationDocumentsDirectory();
        final file = File(p.join(dbFolder.path, 'db.sqlite'));
        return NativeDatabase(file);
      });
}
