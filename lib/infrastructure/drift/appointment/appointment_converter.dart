import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/common/entity_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

class AppointmentConverter
    implements EntityConverter<AppointmentModel, Appointment> {
  @override
  Appointment copyWithId(Appointment entity, Identifier id) {
    return entity.copyWith(id: id);
  }

  @override
  AppointmentModelsCompanion toCompanion(Appointment entity) {
    return AppointmentModelsCompanion.insert(
      clientId: entity.clientId,
      start: entity.dateTimeRange.getOrThrow().start,
      end: entity.dateTimeRange.getOrThrow().end,
    );
  }

  @override
  Appointment toEntity(AppointmentModel model) {
    return Appointment(
      id: model.id,
      clientId: model.clientId,
      dateTimeRange: DateTimeRange.from(
        model.start,
        model.end,
      ),
    );
  }
}
