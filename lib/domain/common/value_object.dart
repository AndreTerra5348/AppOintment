/// Contains the definition for [ValueObject].
import 'package:appointment/domain/common/common_errors.dart';
import 'package:dartz/dartz.dart';

/// A generic class for value objects.
abstract class ValueObject<T_Failure, T_Value> {
  const ValueObject();

  /// The value of the object.
  /// Either a [T_Failure] or a [T_Value].
  Either<T_Failure, T_Value> get value;

  /// Returns the [value] of the object.
  /// Throws a [CriticalError] if the value is a [T_Failure].
  /// Use [isValid] to check if the [value] is a [T_Value].
  T_Value getOrThrow() {
    return value.fold(
      (failure) => throw CriticalError(failure.toString()),
      (value) => value,
    );
  }

  /// Returns true if the [value] is a [T_Value].
  bool get isValid => value.isRight();

  /// Returns true if the [value] is a [T_Failure].
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
