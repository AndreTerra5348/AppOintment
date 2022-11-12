import 'package:appointment/domain/common/value_object.dart';

/// Copy from Formz
/// Enum representing the submission status of a form.
enum FormSubmissionStatus {
  /// The form has not yet been submitted.
  initial,

  /// The form is in the process of being submitted.
  inProgress,

  /// The form has been submitted successfully.
  success,

  /// The form submission failed.
  failure,

  /// The form submission has been canceled.
  canceled
}

/// Useful extensions on [FormSubmissionStatus]
extension FormSubmissionStatusX on FormSubmissionStatus {
  /// Indicates whether the form has not yet been submitted.
  bool get isInitial => this == FormSubmissionStatus.initial;

  /// Indicates whether the form is in the process of being submitted.
  bool get isInProgress => this == FormSubmissionStatus.inProgress;

  /// Indicates whether the form has been submitted successfully.
  bool get isSuccess => this == FormSubmissionStatus.success;

  /// Indicates whether the form submission failed.
  bool get isFailure => this == FormSubmissionStatus.failure;

  /// Indicates whether the form submission has been canceled.
  bool get isCanceled => this == FormSubmissionStatus.canceled;
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

// TODO: add FormInput