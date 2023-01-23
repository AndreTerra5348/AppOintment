/// Drift ModelMixin definition
// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/infrastructure/drift/common/value_converters.dart';
import 'package:drift/drift.dart';

/// Drift base mixin for all models
mixin ModelMixin on Table {
  /// The unique identifier for the model
  IntColumn get id => integer().autoIncrement().map(IdentifierConverter())();
}
