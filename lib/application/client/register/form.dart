import 'package:appointment/application/common/formz.dart';
import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'form.freezed.dart';

@freezed
class ClientRegisterForm with _$ClientRegisterForm, FormMixin {
  const ClientRegisterForm._();

  const factory ClientRegisterForm(
      {required FormSubmissionStatus submissionStatus,
      required Name name}) = _ClientRegisterForm;

  factory ClientRegisterForm.initial() => ClientRegisterForm(
      submissionStatus: FormSubmissionStatus.initial, name: Name(""));

  factory ClientRegisterForm.success() => ClientRegisterForm.initial()
      .copyWith(submissionStatus: FormSubmissionStatus.success);

  @override
  List<ValueObject> get values => [name];
}
