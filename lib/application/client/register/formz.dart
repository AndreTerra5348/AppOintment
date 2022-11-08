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
      ClientRegisterForm(nameInput: NameInput.pure());

  @override
  List<FormzInput> get inputs => [nameInput];
}

class NameInput extends FormzInput<Name, Iterable<StringFailure>> {
  NameInput.pure() : super.pure(Name.empty());
  NameInput.dirty(super.value) : super.dirty();

  @override
  Iterable<StringFailure>? validator(Name value) {
    return value.value.fold((failures) => failures, (r) => null);
  }
}
