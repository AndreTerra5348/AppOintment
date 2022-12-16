import 'package:drift/backends.dart';

QueryExecutor getQueryExecutor() {
  throw UnsupportedError(
    'No suitable database implementation was found on this platform.',
  );
}
