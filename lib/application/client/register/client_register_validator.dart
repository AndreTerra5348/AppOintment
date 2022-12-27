import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:dartz/dartz.dart';

class ClientRegisterValidator implements RegisterValidator<Client> {
  @override
  Option<Client> validate(Client entity) {
    return [
      entity.name,
    ].every((element) => element.isValid)
        ? some(entity)
        : none();
  }
}
