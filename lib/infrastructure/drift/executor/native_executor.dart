/// Drift [NativeDatabase] handler
import 'dart:async';
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

/// Provides [LazyDatabase] with [NativeDatabase] opener
QueryExecutor getQueryExecutor() {
  return LazyDatabase(opener);
}

/// Get a [NativeDatabase] opener for [LazyDatabase]
FutureOr<QueryExecutor> opener() async {
  final dbFolder = await getApplicationDocumentsDirectory();
  final file = File(p.join(dbFolder.path, 'db.sqlite'));
  return NativeDatabase(file);
}
