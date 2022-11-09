import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'string_validators.freezed.dart';

Either<StringFailure, String> emptyStringValidation(String value) =>
    value.isEmpty ? const Left(StringFailure.empty()) : Right(value);

@freezed
class StringFailure with _$StringFailure {
  const factory StringFailure.maxLength(
      {required String value, required int length}) = MaxLengthFailure;
  const factory StringFailure.minLength(
      {required String value, required int length}) = MinLengthFailure;
  const factory StringFailure.empty() = EmptyStringFailure;
}
