/// Drift unsupported database platform handle
import 'package:drift/backends.dart';

/// Throws an [UnsupportedError] if the current platform is not supported.
QueryExecutor getQueryExecutor() {
  throw UnsupportedError(
    'No suitable database implementation was found on this platform.',
  );
}
