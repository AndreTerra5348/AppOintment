/// Domain layer common values
import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/domain/common/common_types.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';

/// Used to unique identify entities.
class Identifier extends ValueObject<IdentifierFailure, int> {
  /// [Right<int>] value of the [Identifier] or a [Left<IdentifierFailure>].
  @override
  final Either<IdentifierFailure, int> value;

  /// Creates a [Identifier] from a [Either] [value].
  const Identifier._(this.value);

  /// Creates an empty [Identifier]
  factory Identifier() => const Identifier._(Left(IdentifierFailure.invalid()));

  /// Creates a valid [Identifier] from an [int] [id].
  factory Identifier.fromInt(int id) => Identifier._(Right(id));
}

/// Used to represent a date time period.
class DateTimeRange extends ValueObject<RangeFailure, Range<DateTime>> {
  /// [Right<Range<DateTime>>] value of the [DateTimeRange] or a [Left<RangeFailure>].
  @override
  final Either<RangeFailure, Range<DateTime>> value;

  DateTime get startOrThrow => getOrThrow().start;
  DateTime get endOrThrow => getOrThrow().end;

  /// Creates a [DateTimeRange] from a [Either] [value].
  const DateTimeRange._(this.value);

  /// Creates a valid [DateTimeRange] from a [DateTime] [start] and [DateTime] [end].
  /// or a RangeFailure if [start] is after [end] or [start] is equal to [end].
  factory DateTimeRange.from(DateTime start, DateTime end) {
    if (start.isAfter(end)) {
      return const DateTimeRange._(Left(RangeFailure.startIsAfterEnd()));
    } else if (start == end) {
      return const DateTimeRange._(Left(RangeFailure.startIsEqualToEnd()));
    }

    return DateTimeRange._(Right(Range(start: start, end: end)));
  }
}
