import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';

class Name extends ValueObject<StringFailure, String> {
  @override
  final Either<Iterable<StringFailure>, String> value;
  const Name._(this.value);

  factory Name(String text) {
    Iterable<Validation<StringFailure, String>> validators = [
      const NonEmptyStringValidator()
    ];
    return Name._(validate(validators, text));
  }
}
