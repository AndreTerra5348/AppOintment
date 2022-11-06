import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_value.freezed.dart';

class StringMaxLengthValidator extends Validator<ExceedingLength, String> {
  final int _length;

  StringMaxLengthValidator(this._length);
  @override
  Either<ExceedingLength, String> call(String value) {
    return value.length >= _length
        ? Left(StringFailure.exceedingLength(value: value, length: _length)
            as ExceedingLength)
        : Right(value);
  }
}

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.exceedingLength(
      {required String value, required int length}) = ExceedingLength;
}
