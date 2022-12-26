import 'package:appointment/domain/common/common_errors.dart';
import 'package:dartz/dartz.dart';

abstract class ValueObject<T_Failure, T_Value> {
  const ValueObject();
  Either<T_Failure, T_Value> get value;

  T_Value getOrThrow() {
    return value.fold(
      (failure) => throw CriticalError(failure.toString()),
      (value) => value,
    );
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
