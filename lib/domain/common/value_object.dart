import 'package:dartz/dartz.dart';

class UnexpectedValueError<T_Failure> extends Error {
  final Iterable<T_Failure> failures;

  UnexpectedValueError(this.failures);

  @override
  String toString() {
    final failuresMessage = failures.map((e) => e.toString()).join(", ");
    return Error.safeToString('Critical Failure: $failuresMessage');
  }
}

abstract class ValueObject<T_Failure, T_Value> {
  const ValueObject();
  Either<Iterable<T_Failure>, T_Value> get value;

  T_Value getOrCrash() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ValueObject<T_Failure, T_Value> && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

Either<Iterable<T_Failure>, T_Value> validate<T_Failure, T_Value>(
    Iterable<Validation<T_Failure, T_Value>> validators, T_Value value) {
  final failures = validators
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
