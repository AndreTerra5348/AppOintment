part of 'appointment_bloc.dart';

/// Defines [Appointment] events
@freezed
class AppointmentEvent with _$AppointmentEvent {
  /// Event to load the [Appointment]
  const factory AppointmentEvent.loaded({required Appointment appointment}) =
      _Loaded;

  /// Event to change the [DateTimeRange] of the [Appointment]
  const factory AppointmentEvent.dateTimeRangeChanged(
      {required DateTimeRange dateTimeRange}) = _DateTimeRangeChanged;
}
