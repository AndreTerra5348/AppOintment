import 'dart:io';

import 'package:appointment/infrastructure/client/table.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'db.g.dart';

@DriftDatabase(tables: [ClientModels])
class DriftDb extends _$DriftDb {
  DriftDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}

class QueryExecutorProvider {
  static LazyDatabase getNativeDB() {
    return LazyDatabase(() async {
      final dbFolder = await getApplicationDocumentsDirectory();
      final file = File(p.join(dbFolder.path, 'db.sqlite'));
      return NativeDatabase(file);
    });
  }
}
