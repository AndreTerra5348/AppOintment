/// Domain model Appointment definition.
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_entity.freezed.dart';

/// Represents a [Appointment] in the domain model.
@freezed
class Appointment with _$Appointment, EntityMixin {
  const Appointment._();

  /// Creates a new [Appointment] with a [dateTimeRange] and an [id].
  const factory Appointment({
    required Identifier id,
    required Identifier clientId,
    required DateTimeRange dateTimeRange,
  }) = _Appointment;

  /// Creates a new [Appointment] with a [dateTimeRange] and an empty [id].
  factory Appointment.withoutIdentifier({
    required Identifier clientId,
    required DateTimeRange dateTimeRange,
  }) {
    return Appointment(
      id: Identifier(),
      clientId: clientId,
      dateTimeRange: dateTimeRange,
    );
  }

  /// [List] of all [Appointment] [ValueObject]s.
  @override
  List<ValueObject> get values => [id, clientId, dateTimeRange];
}
