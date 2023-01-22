/// Drift Client table definition
// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/common/type_converters.dart';
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

/// Adds conversion methods to [ClientModel]
extension ClientModelEx on ClientModel {
  Client toEntity() => Client(
        id: id,
        name: name,
      );
}

/// Adds conversion methods to [Client]
extension ClientEx on Client {
  ClientModelsCompanion toInsertCompanion() => ClientModelsCompanion.insert(
        name: name,
      );
}
