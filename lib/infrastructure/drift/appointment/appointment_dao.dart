/// Drift AppointmentDao definition
import 'package:appointment/infrastructure/drift/appointment/appointment_table.dart';
import 'package:appointment/infrastructure/drift/core/dao.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

part 'appointment_dao.g.dart';

/// Access Drift database tables to store and manage [AppointmentModel]s
/// stored in the [AppointmentModels] table
@DriftAccessor(tables: [AppointmentModels])
class AppointmentDao extends DatabaseAccessor<DriftDb>
    with _$AppointmentDaoMixin, Dao<AppointmentModels, AppointmentModel> {
  AppointmentDao(super.attachedDatabase);

  @override
  DeleteStatement<AppointmentModels, AppointmentModel> getDelete() {
    return delete(appointmentModels);
  }

  @override
  InsertStatement<AppointmentModels, AppointmentModel> getInsert() {
    return into(appointmentModels);
  }

  @override
  UpdateStatement<AppointmentModels, AppointmentModel> getUpdate() {
    return update(appointmentModels);
  }

  @override
  SimpleSelectStatement<AppointmentModels, AppointmentModel> getSelect(
      {SelectFilter<AppointmentModels>? filter}) {
    if (filter == null) {
      return select(appointmentModels);
    }
    return select(appointmentModels)..where(filter.getExpression);
  }
}
