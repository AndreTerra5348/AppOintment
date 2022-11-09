import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class UidFailure with _$UidFailure {
  const factory UidFailure.invalid() = InvalidUid;
}
