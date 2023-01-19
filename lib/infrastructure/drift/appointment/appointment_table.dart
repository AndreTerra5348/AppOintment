/// Appointment Table for Drift Database
// This file is used for code generation only, it should not be tested
// coverage:ignore-file
import 'package:appointment/infrastructure/drift/common/type_converters.dart';
import 'package:drift/drift.dart';

/// Model and stores Appointments as [AppointmentModel] for the Drift database
class AppointmentModels extends Table {
  /// The id of the [AppointmentModel]
  IntColumn get id => integer().autoIncrement().map(IdentifierConverter())();

  /// The start DateTime of the [AppointmentModel]
  DateTimeColumn get start => dateTime()();

  /// The end DateTime of the [AppointmentModel]
  DateTimeColumn get end => dateTime()();
}
