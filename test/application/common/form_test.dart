import 'package:appointment/application/common/form.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
      "isInitial should be true "
      "When SubmissionStatus is Initial", () {
    const status = SubmissionStatus.initial();
    expect(status.isInitial, true);
  });

  test(
      "isInitial should be false "
      "When SubmissionStatus is not Initial", () {
    const status = SubmissionStatus.inProgress();
    expect(status.isInitial, false);
  });

  test(
      "isInProgress should be true "
      "When SubmissionStatus is InProgress", () {
    const status = SubmissionStatus.inProgress();
    expect(status.isInProgress, true);
  });

  test(
      "isInProgress should be false "
      "When SubmissionStatus is not InProgress", () {
    const status = SubmissionStatus.initial();
    expect(status.isInProgress, false);
  });

  test(
      "isSuccess should be true "
      "When SubmissionStatus is Success", () {
    const status = SubmissionStatus.success();
    expect(status.isSuccess, true);
  });

  test(
      "isSuccess should be false "
      "When SubmissionStatus is not Success", () {
    const status = SubmissionStatus.initial();
    expect(status.isSuccess, false);
  });

  test(
      "isFailure should be true "
      "When SubmissionStatus is Failure", () {
    const status = SubmissionStatus.failure(
      failure: SubmissionFailure.invalidFields(),
    );
    expect(status.isFailure, true);
  });

  test(
      "isFailure should be false "
      "When SubmissionStatus is not Failure", () {
    const status = SubmissionStatus.initial();
    expect(status.isFailure, false);
  });

  test(
      "isCanceled should be true "
      "When SubmissionStatus is Canceled", () {
    const status = SubmissionStatus.canceled();
    expect(status.isCanceled, true);
  });

  test(
      "isCanceled should be false "
      "When SubmissionStatus is not Canceled", () {
    const status = SubmissionStatus.initial();
    expect(status.isCanceled, false);
  });
}
