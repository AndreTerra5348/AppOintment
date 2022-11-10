import 'package:dartz/dartz.dart';

class UnexpectedValueError<T_Failure> extends Error {
  final T_Failure failure;

  UnexpectedValueError(this.failure);

  @override
  String toString() {
    final failuresMessage = failure.toString();
    return Error.safeToString('Critical Failure: $failuresMessage');
  }
}

abstract class ValueObject<T_Failure, T_Value> {
  const ValueObject();
  Either<T_Failure, T_Value> get value;

  T_Value getOrThrow() {
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  bool get isValid => value.isRight();
  bool get isNotValid => !isValid;

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
