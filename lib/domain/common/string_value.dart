import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_value.freezed.dart';

class StringLenValidator extends Validator<StringFailure, String> {
  final int _len;

  StringLenValidator(this._len);
  @override
  Either<StringFailure, String> call(String value) {
    return value.length >= _len
        ? const Left(StringFailure.exceedingLength())
        : Right(value);
  }
}

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.exceedingLength() = _ExceedingLength;
}
