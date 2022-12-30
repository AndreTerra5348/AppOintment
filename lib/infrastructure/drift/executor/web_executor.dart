/// Defines [WebDatabase] creation
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// Provides a [WebDatabase]
QueryExecutor create() {
  return WebDatabase('db');
}
