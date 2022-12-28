/// Define submission status related classes
import 'package:appointment/domain/core/repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'submission_status.freezed.dart';

/// Represents the status of a given submission
@freezed
class SubmissionStatus with _$SubmissionStatus {
  const SubmissionStatus._();

  /// Initializing or initial status
  const factory SubmissionStatus.initial() = _Initial;

  /// Submitting
  const factory SubmissionStatus.inProgress() = _InProgress;

  /// Successfully submitted
  const factory SubmissionStatus.success() = _Success;

  /// Failed to submit
  const factory SubmissionStatus.failure({required SubmissionFailure failure}) =
      _Failure;

  /// Submission canceled
  const factory SubmissionStatus.canceled() = _Canceled;
}

/// Represents a failure in a submission
@freezed
class SubmissionFailure with _$SubmissionFailure {
  /// Repository related failure
  const factory SubmissionFailure.repository(
      {required RepositoryFailure failure}) = _Repository;

  /// fields are not valid for a given submission
  const factory SubmissionFailure.invalidFields() = _InvalidFields;

  /// Could not find a given resource needed to complete a submission
  const factory SubmissionFailure.notFound() = _NotFound;
}
