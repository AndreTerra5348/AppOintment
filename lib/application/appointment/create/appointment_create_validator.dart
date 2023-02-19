import 'package:appointment/application/create/create_validator.dart';
import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/value_object.dart';

class AppointmentCreateValidator with CreateValidator<Appointment> {
  @override
  List<ValueObject> getValues(Appointment entity) {
    return [entity.dateTimeRange];
  }
}
