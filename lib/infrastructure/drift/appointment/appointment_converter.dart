/// Drift AppointmentConverter definition
import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/core/entity_model_converter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

/// Converts between [Appointment] and [AppointmentModel]
class AppointmentConverter
    extends EntityModelConverter<Appointment, AppointmentModel> {
  /// Converts a [AppointmentModel] to [Appointment]
  @override
  Appointment toEntity(AppointmentModel model) {
    return Appointment(
      id: model.id,
      dateTimeRange: DateTimeRange.from(
        model.start,
        model.end,
      ),
    );
  }

  /// Converts a [Appointment] to [AppointmentModel] with an [Identifier]
  @override
  Appointment toEntityWithId(Appointment entity, Identifier id) {
    return entity.copyWith(id: id);
  }

  /// Converts a [Appointment] to [AppointmentModel]
  /// for use with insert statement
  @override
  AppointmentModelsCompanion toUpdateCompanion(Appointment entity) {
    return AppointmentModelsCompanion.insert(
      start: entity.dateTimeRange.getOrThrow().start,
      end: entity.dateTimeRange.getOrThrow().end,
    );
  }
}
