import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:dartz/dartz.dart';

// TODO: remove invalid state
class Name extends ValueObject<StringFailure, String> {
  @override
  final Either<StringFailure, String> value;
  const Name._(this.value);

  factory Name(String text) {
    return Name._(nameValidation(text));
  }

  factory Name.empty() => const Name._(Right(""));
}

Either<StringFailure, String> nameValidation(String name) {
  return nonEmptyStringValidation(name);
}
