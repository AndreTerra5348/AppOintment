import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'uid.freezed.dart';

class Uid extends ValueObject<UidFailure, int> {
  @override
  final Either<UidFailure, int> value;

  const Uid._(this.value);
  factory Uid() => const Uid._(Left(UidFailure.invalid()));
  factory Uid.fromInt(int id) => Uid._(Right(id));
}

@freezed
class UidFailure with _$UidFailure {
  const factory UidFailure.invalid() = InvalidUid;
}
