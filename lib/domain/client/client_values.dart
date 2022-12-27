/// Client values and validators.
import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/common_validators.dart';
import 'package:dartz/dartz.dart';

/// The name of a client.
class Name extends ValueObject<StringFailure, String> {
  /// The value of the [Name].
  @override
  final Either<StringFailure, String> value;
  const Name._(this.value);

  /// Creates and validates a [Name] from a [String] [text].
  /// if the name is invalid, name value will be a [Left] with the [StringFailure].
  /// if the name is valid, name value will be a [Right] with the [String].
  factory Name(String text) {
    return Name._(nameValidation(text));
  }
}

/// Validates a [String] [name] to be non-empty and only letters and accents.
Either<StringFailure, String> nameValidation(String name) {
  return nonEmptyStringValidation(name)
      .flatMap((a) => lettersAndAccentsValidation(a));
}
