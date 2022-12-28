/// Type converters for the Drift database.
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:drift/drift.dart';

/// Converts a [Uid] to an [int] and vice versa
class UidConverter extends TypeConverter<Uid, int> {
  @override
  Uid fromSql(int fromDb) {
    return Uid.fromInt(fromDb);
  }

  /// Throws an [CriticalError] if the [value] is not a valid
  @override
  int toSql(Uid value) {
    return value.getOrThrow();
  }
}

/// Converts a [Name] to a [String] and vice versa
class NameConverter extends TypeConverter<Name, String> {
  @override
  Name fromSql(String fromDb) {
    return Name(fromDb);
  }

  /// Throws an [CriticalError] if the [value] is not a valid
  @override
  String toSql(Name value) {
    return value.getOrThrow();
  }
}
