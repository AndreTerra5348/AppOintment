import 'package:appointment/domain/common/common_failures.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';

class Uid extends ValueObject<UidFailure, int> {
  @override
  final Either<UidFailure, int> value;

  const Uid._(this.value);
  factory Uid() => const Uid._(Left(UidFailure.invalid()));
  factory Uid.fromInt(int id) => Uid._(Right(id));
}
