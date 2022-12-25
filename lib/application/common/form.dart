import 'package:appointment/domain/core/repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';

@freezed
class SubmissionStatus with _$SubmissionStatus {
  const SubmissionStatus._();
  const factory SubmissionStatus.initial() = _Initial;
  const factory SubmissionStatus.inProgress() = _InProgress;
  const factory SubmissionStatus.success() = _Success;
  const factory SubmissionStatus.failure({required SubmissionFailure failure}) =
      _Failure;
  const factory SubmissionStatus.canceled() = _Canceled;
}

@freezed
class SubmissionFailure with _$SubmissionFailure {
  const factory SubmissionFailure.repository(
      {required RepositoryFailure failure}) = _Repository;
  const factory SubmissionFailure.invalidFields() = _InvalidFields;
  const factory SubmissionFailure.notFound() = _NotFound;
}
