/// Common values used in the domain layer.
import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';

/// Unique identifier for entities.
class Uid extends ValueObject<UidFailure, int> {
  /// The value of the [Uid]
  @override
  final Either<UidFailure, int> value;

  /// Creates a [Uid] from a [Either] [value].
  const Uid._(this.value);

  /// Creates an empty [Uid]
  factory Uid() => const Uid._(Left(UidFailure.invalid()));

  /// Creates a valid [Uid] from an [int] [id].
  factory Uid.fromInt(int id) => Uid._(Right(id));
}
