import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_value.freezed.dart';

class MaxLengthStringValidator extends Validator<MaxLengthFailure, String> {
  final int _length;

  const MaxLengthStringValidator(this._length);
  @override
  Either<MaxLengthFailure, String> call(String value) {
    return value.length >= _length
        ? Left(StringFailure.maxLength(value: value, length: _length)
            as MaxLengthFailure)
        : Right(value);
  }
}

class MinLengthStringValidator extends Validator<MinLengthFailure, String> {
  final int _length;

  const MinLengthStringValidator(this._length);

  @override
  Either<MinLengthFailure, String> call(String value) {
    return value.length < _length
        ? Left(StringFailure.minLength(value: value, length: _length)
            as MinLengthFailure)
        : Right(value);
  }
}

class NonEmptyStringValidator extends Validator<EmptyStringFailure, String> {
  const NonEmptyStringValidator();
  @override
  Either<EmptyStringFailure, String> call(String value) {
    return value.isEmpty
        ? Left(StringFailure.empty(value: value) as EmptyStringFailure)
        : Right(value);
  }
}

@freezed
abstract class StringFailure with _$StringFailure {
  const factory StringFailure.maxLength(
      {required String value, required int length}) = MaxLengthFailure;
  const factory StringFailure.minLength(
      {required String value, required int length}) = MinLengthFailure;
  const factory StringFailure.empty({required String value}) =
      EmptyStringFailure;
}
