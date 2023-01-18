import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/domain/common/common_types.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      'DateTimeRange.from() should return a valid DateTimeRange '
      'when start is before end', () {
    final start = DateTime(2020, 1, 1);
    final end = DateTime(2020, 1, 2);
    final dateTimeRange = DateTimeRange.from(start, end);
    expect(dateTimeRange.value, isA<Right<RangeFailure, Range<DateTime>>>());
  });

  test(
      'DateTimeRange.from() should return [RangeFailure.startIsAfterEnd]] '
      'when start is after end', () {
    final start = DateTime(2020, 1, 2);
    final end = DateTime(2020, 1, 1);
    final dateTimeRange = DateTimeRange.from(start, end);
    expect(dateTimeRange.value, const Left(RangeFailure.startIsAfterEnd()));
  });

  test(
      'DateTimeRange.from() should return [RangeFailure.startIsAfterEnd]] '
      'when start is equal to end', () {
    final start = DateTime(2020, 1, 1);
    final end = DateTime(2020, 1, 1);
    final dateTimeRange = DateTimeRange.from(start, end);
    expect(dateTimeRange.value, const Left(RangeFailure.startIsEqualToEnd()));
  });
}
