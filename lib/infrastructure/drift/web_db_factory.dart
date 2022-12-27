import 'package:drift/drift.dart';
import 'package:drift/web.dart';

QueryExecutor getQueryExecutor() {
  return LazyDatabase(() async {
    return WebDatabase('db');
  });
}
