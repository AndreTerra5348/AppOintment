import 'package:appointment/application/common/form_submission_status.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';

@freezed
class ClientRegisterForm with _$ClientRegisterForm {
  const factory ClientRegisterForm(
      {required FormSubmissionStatus status,
      required Name name}) = _ClientRegisterForm;

  factory ClientRegisterForm.initial() =>
      ClientRegisterForm(status: FormSubmissionStatus.initial, name: Name(""));
}
