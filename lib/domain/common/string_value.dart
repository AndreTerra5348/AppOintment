import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_value.freezed.dart';

class StringMaxLengthValidator extends Validator<MaxLengthFailure, String> {
  final int _length;

  StringMaxLengthValidator(this._length);
  @override
  Either<MaxLengthFailure, String> call(String value) {
    return value.length >= _length
        ? Left(StringFailure.maxLength(value: value, length: _length)
            as MaxLengthFailure)
        : Right(value);
  }
}

class StringMinLengthValidator extends Validator<MinLengthFailure, String> {
  final int _length;

  StringMinLengthValidator(this._length);

  @override
  Either<MinLengthFailure, String> call(String value) {
    return value.length < _length
        ? Left(StringFailure.minLength(value: value, length: _length)
            as MinLengthFailure)
        : Right(value);
  }
}

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.maxLength(
      {required String value, required int length}) = MaxLengthFailure;
  const factory StringFailure.minLength(
      {required String value, required int length}) = MinLengthFailure;
}
