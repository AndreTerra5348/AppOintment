import 'dart:io';

import 'package:appointment/infrastructure/client/client_models.dart';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_db.g.dart';

@DriftDatabase(tables: [ClientModels])
class AppDb extends _$AppDb {
  AppDb({required QueryExecutor executor}) : super(executor);
  @override
  int get schemaVersion => 1;
}

// ignore: unused_element
LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}
