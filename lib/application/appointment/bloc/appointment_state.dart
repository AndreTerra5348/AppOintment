part of 'appointment_bloc.dart';

/// Defines [Appointment] states
@freezed
class AppointmentState with _$AppointmentState {
  /// Emitted when the [AppointmentBloc] changes state
  const factory AppointmentState({
    required Appointment appointment,
  }) = _AppointmentState;

  /// Emitted when the [AppointmentBloc] is initialized
  factory AppointmentState.initial() => AppointmentState(
        appointment: Appointment.withoutIdentifier(
          clientId: Identifier(),
          dateTimeRange: DateTimeRange(),
        ),
      );
}
