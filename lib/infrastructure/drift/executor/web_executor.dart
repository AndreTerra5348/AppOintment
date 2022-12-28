/// Drift [WebDatabase] handler
import 'package:drift/drift.dart';
import 'package:drift/web.dart';

/// Provides a [LazyDatabase] with [WebDatabase] opener
QueryExecutor getQueryExecutor() {
  return LazyDatabase(() async {
    return WebDatabase('db');
  });
}
