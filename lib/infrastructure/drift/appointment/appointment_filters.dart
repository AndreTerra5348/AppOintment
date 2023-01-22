/// Drift filters for [AppointmentModels]
import 'package:appointment/infrastructure/drift/appointment/appointment_table.dart';
import 'package:appointment/infrastructure/drift/core/select_filter.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';
import 'package:drift/drift.dart';

/// Filters [SimpleSelectStatement] by the [AppointmentModel.start]
class StartDateTimeFilter extends SelectFilter<AppointmentModels> {
  /// The start date to filter by
  final DateTime start;

  /// The end date to filter by
  final DateTime end;

  StartDateTimeFilter({
    required this.start,
    required this.end,
  });

  @override
  Expression<bool> getExpression(AppointmentModels table) {
    return table.start.isBetweenValues(start, end);
  }
}
