import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/string_validators.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'formz.freezed.dart';

@freezed
class ClientRegisterForm with FormzMixin, _$ClientRegisterForm {
  const ClientRegisterForm._();

  const factory ClientRegisterForm({required NameInput nameInput}) =
      _ClientRegisterForm;

  factory ClientRegisterForm.initial() =>
      ClientRegisterForm(nameInput: NameInput.initial());

  @override
  List<FormzInput> get inputs => [nameInput];
}

class NameInput extends FormzInput<Name, StringFailure> {
  NameInput.pure(super.value) : super.pure();
  NameInput.dirty(super.value) : super.dirty();
  NameInput.initial() : super.pure(Name(""));

  @override
  StringFailure? validator(Name value) {
    return value.value.fold((f) => f, (r) => null);
  }
}
