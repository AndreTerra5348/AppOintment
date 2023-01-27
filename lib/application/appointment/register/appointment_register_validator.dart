import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/value_object.dart';

class AppointmentRegisterValidator with RegisterValidator<Appointment> {
  @override
  List<ValueObject> getValues(Appointment entity) {
    return [entity.dateTimeRange];
  }
}
