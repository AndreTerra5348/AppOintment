// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/infrastructure/common/type_converter.dart';
import 'package:drift/drift.dart';

class ClientModels extends Table {
  IntColumn get id => integer().autoIncrement().map(UidConverter())();
  TextColumn get name => text()
      .withLength(
        min: 1,
        max: 32,
      )
      .map(
        NameConverter(),
      )();
}
