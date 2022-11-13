import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/core/i_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'formz.freezed.dart';

@freezed
class SubmissionStatus with _$SubmissionStatus {
  const SubmissionStatus._();
  const factory SubmissionStatus.initial() = _Initial;
  const factory SubmissionStatus.inProgress() = _InProgress;
  const factory SubmissionStatus.success() = _Success;
  const factory SubmissionStatus.failure({required SubmissionFailure failure}) =
      _Failure;
  const factory SubmissionStatus.canceled() = _Canceled;

  bool get isInitial => maybeMap(orElse: () => false, initial: (_) => true);
  bool get isInProgress =>
      maybeMap(orElse: () => false, inProgress: (_) => true);
  bool get isSuccess => maybeMap(orElse: () => false, success: (_) => true);
  bool get isFailure => maybeMap(orElse: () => false, failure: (_) => true);
  bool get isCanceled => maybeMap(orElse: () => false, canceled: (_) => true);
}

@freezed
class SubmissionFailure with _$SubmissionFailure {
  const factory SubmissionFailure.repository(
      {required RepositoryFailure failure}) = _Repository;
  const factory SubmissionFailure.invalidField() = _InvalidInput;
}

mixin FormMixin {
  /// Whether the [ValueObject] values are all valid.
  bool get isValid => values.every((element) => element.isValid);

  /// Whether the [ValueObject] values are not all valid.
  bool get isNotValid => !isValid;

  /// Returns all [ValueObject] instances.
  ///
  /// Override this and give it all [ValueObject]s in your class that should be
  /// validated automatically.
  List<ValueObject<dynamic, dynamic>> get values;
}
