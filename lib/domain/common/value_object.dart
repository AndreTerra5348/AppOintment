import 'package:dartz/dartz.dart';

abstract class ValueObject<T_Failure, T_Value> {
  const ValueObject();
  Either<Iterable<T_Failure>, T_Value> get value;
}

Either<Iterable<T_Failure>, T_Value> validate<T_Failure, T_Value>(
    Iterable<Validation<T_Failure, T_Value>> validators, T_Value value) {
  var failures = validators
      .map((validator) => validator(value))
      .where((element) => element.isLeft())
      .cast<Left<T_Failure, T_Value>>()
      .map((e) => e.value);

  return failures.isNotEmpty ? Left(failures) : Right(value);
}

abstract class Validator<T_Failure, T_Value> {
  const Validator();
  Either<T_Failure, T_Value> call(T_Value value);
}

typedef Validation<T_Failure, T_Value> = Either<T_Failure, T_Value> Function(
    T_Value);
