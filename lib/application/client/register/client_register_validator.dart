/// Defines [ClientRegisterValidator]
import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:dartz/dartz.dart';

/// Validates the [Client] entity [ValueObject]s needed for registration
class ClientRegisterValidator implements RegisterValidator<Client> {
  /// Validates the [Client] entity
  /// returns [Some] if the entity is valid
  /// returns [None] if the entity is invalid
  @override
  Option<Client> validate(Client entity) {
    return [
      entity.name,
    ].every((element) => element.isValid)
        ? some(entity)
        : none();
  }
}
