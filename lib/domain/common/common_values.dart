/// Domain layer common values
import 'package:appointment/domain/common/common_failures.dart';
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
