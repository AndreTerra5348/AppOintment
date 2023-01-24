import 'package:appointment/infrastructure/drift/appointment/appointment_filters.dart';
import 'package:appointment/infrastructure/drift/appointment/appointment_table.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'appointment_filters_test.mocks.dart';

@GenerateNiceMocks([MockSpec<AppointmentModels>()])
void main() {
  test(
      "Should call [AppointmentModels.table.start.isBetweenValues(start, end)] once "
      "when getExpression is called", () {
    // Arrange
    final mockAppointmentModels = MockAppointmentModels();
    final sut = StartDateTimeFilter(
      start: DateTime.now(),
      end: DateTime.now().add(
        const Duration(days: 1),
      ),
    );

    // Act
    sut.getExpression(mockAppointmentModels);

    // Assert
    verify(mockAppointmentModels.start.isBetweenValues(
      sut.start,
      sut.end,
    )).called(1);
  });
}
