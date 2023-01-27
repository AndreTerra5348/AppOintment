import 'package:appointment/application/appointment/bloc/appointment_bloc.dart';
import 'package:appointment/domain/appointment/appointment_entity.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late Appointment appointment;

  setUp(() {
    appointment = Appointment(
      id: Identifier.fromInt(1),
      clientId: Identifier.fromInt(1),
      dateTimeRange: DateTimeRange.from(
        DateTime(2021, 1, 1, 10, 0),
        DateTime(2021, 1, 1, 11, 0),
      ),
    );
  });

  group("Given [AppointmentBloc.initial()]", () {
    group("When [AppointmentEvent.loaded(Appointment)]", () {
      blocTest<AppointmentBloc, AppointmentState>(
        "Then [AppointmentState.appointment] is [Appointment]",
        build: () => AppointmentBloc(),
        act: (bloc) =>
            bloc.add(AppointmentEvent.loaded(appointment: appointment)),
        expect: () =>
            [AppointmentState.initial().copyWith(appointment: appointment)],
      );
    });

    group("When [AppointmentEvent.dateTimeRangeChanged(DateTimeRange)]", () {
      late DateTimeRange dateTimeRange;
      setUp(() {
        dateTimeRange = DateTimeRange.from(
          DateTime(2021, 1, 1, 11, 0),
          DateTime(2021, 1, 1, 12, 0),
        );
      });

      blocTest<AppointmentBloc, AppointmentState>(
        "Then [AppointmentState.appointment.dateTimeRange] is [dateTimeRange]",
        build: () => AppointmentBloc(),
        seed: () =>
            AppointmentState.initial().copyWith(appointment: appointment),
        act: (bloc) => bloc.add(AppointmentEvent.dateTimeRangeChanged(
            dateTimeRange: dateTimeRange)),
        expect: () => [
          AppointmentState.initial().copyWith(
            appointment: appointment.copyWith(dateTimeRange: dateTimeRange),
          )
        ],
      );
    });
  });
}
