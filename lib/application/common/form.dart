import 'package:appointment/domain/common/value_object.dart';
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

  bool get isInitial => this is _Initial;
  bool get isInProgress => this is _InProgress;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
  bool get isCanceled => this is _Canceled;
}

@freezed
class SubmissionFailure with _$SubmissionFailure {
  const factory SubmissionFailure.repository(
      {required RepositoryFailure failure}) = _Repository;
  const factory SubmissionFailure.invalidFields() = _InvalidFields;
  const factory SubmissionFailure.notFound() = _NotFound;
}

mixin FormMixin {
  bool get isValid => values.every((element) => element.isValid);

  bool get isNotValid => !isValid;

  List<ValueObject<dynamic, dynamic>> get values;
}
