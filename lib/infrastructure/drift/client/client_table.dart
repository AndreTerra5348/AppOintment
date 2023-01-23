/// Drift Client table definition
// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/common/value_converters.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

/// Model and stores Clients as [ClientModel] for the Drift database
class ClientModels extends Table with ModelMixin {
  /// The name of the [ClientModel]
  TextColumn get name => text()
      .withLength(
        min: 1,
        max: 32,
      )
      .map(NameConverter())();
}
