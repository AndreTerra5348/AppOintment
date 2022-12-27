import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:drift/drift.dart';

class UidConverter extends TypeConverter<Uid, int> {
  @override
  Uid fromSql(int fromDb) {
    return Uid.fromInt(fromDb);
  }

  @override
  int toSql(Uid value) {
    return value.getOrThrow();
  }
}

class NameConverter extends TypeConverter<Name, String> {
  @override
  Name fromSql(String fromDb) {
    return Name(fromDb);
  }

  @override
  String toSql(Name value) {
    return value.getOrThrow();
  }
}
