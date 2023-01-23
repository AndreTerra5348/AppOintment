/// Appointment Table for Drift Database
// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/infrastructure/drift/client/client_table.dart';
import 'package:appointment/infrastructure/drift/common/model_mixin.dart';
import 'package:appointment/infrastructure/drift/common/value_converters.dart';
import 'package:drift/drift.dart';

/// Model and stores Appointments as [AppointmentModel] for the Drift database
class AppointmentModels extends Table with ModelMixin {
  /// The id of the [ClientModel] that the [AppointmentModel] belongs to
  IntColumn get clientId =>
      integer().map(IdentifierConverter()).references(ClientModels, #id)();

  /// The start DateTime of the [AppointmentModel]
  DateTimeColumn get start => dateTime().check(start.isSmallerThan(end))();

  /// The end DateTime of the [AppointmentModel]
  DateTimeColumn get end => dateTime().check(end.isBiggerThan(start))();
}
