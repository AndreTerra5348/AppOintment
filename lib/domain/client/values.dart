import 'package:appointment/domain/common/failures.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/validators.dart';
import 'package:dartz/dartz.dart';

class Name extends ValueObject<StringFailure, String> {
  @override
  final Either<StringFailure, String> value;
  const Name._(this.value);

  factory Name(String text) {
    return Name._(nameValidation(text));
  }
}

Either<StringFailure, String> nameValidation(String name) {
  return nonEmptyStringValidation(name)
      .flatMap((a) => lettersAndAccentsValidation(a));
}
