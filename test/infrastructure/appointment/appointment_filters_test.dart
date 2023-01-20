import 'package:appointment/infrastructure/drift/appointment/appointment_filters.dart';
import 'package:appointment/infrastructure/drift/appointment/appointment_table.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'appointment_filters_test.mocks.dart';

@GenerateNiceMocks([MockSpec<SimpleSelectStatement>()])
void main() {
  test("Should call SimpleSelectStatement once when filter is called", () {
    // Arrange
    final mockSelect =
        MockSimpleSelectStatement<AppointmentModels, AppointmentModel>();
    when(mockSelect.where(any));
    final sut = StartDateTimeFilter(
      start: DateTime.now(),
      end: DateTime.now().add(
        const Duration(days: 1),
      ),
    );

    // Act
    sut(mockSelect);

    // Assert
    verify(mockSelect.where(any)).called(1);
  });
}
