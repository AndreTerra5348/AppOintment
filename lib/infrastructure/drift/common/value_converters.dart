/// Type converters for the Drift database.
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:drift/drift.dart';

/// Converts a [Identifier] to an [int] and vice versa
class IdentifierConverter extends TypeConverter<Identifier, int> {
  @override
  Identifier fromSql(int fromDb) {
    return Identifier.fromInt(fromDb);
  }

  /// Throws an [CriticalError] if the [value] is not a valid
  @override
  int toSql(Identifier value) {
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
