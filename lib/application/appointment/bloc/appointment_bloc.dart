import 'dart:async';

import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_event.dart';
part 'appointment_state.dart';
part 'appointment_bloc.freezed.dart';

class AppointmentBloc extends Bloc<AppointmentEvent, AppointmentState> {
  AppointmentBloc() : super(AppointmentState.initial()) {
    on<_Loaded>(_onLoaded);
    on<_DateTimeRangeChanged>(_onDateTimeRangeChanged);
  }

  FutureOr<void> _onLoaded(_Loaded event, Emitter<AppointmentState> emit) {
    emit(state.copyWith(
      appointment: event.appointment,
    ));
  }

  FutureOr<void> _onDateTimeRangeChanged(
      _DateTimeRangeChanged event, Emitter<AppointmentState> emit) {
    emit(state.copyWith(
      appointment: state.appointment.copyWith(
        dateTimeRange: event.dateTimeRange,
      ),
    ));
  }
}
