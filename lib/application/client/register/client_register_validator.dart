/// Defines [ClientRegisterValidator]
import 'package:appointment/application/register/register_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/value_object.dart';

/// Validates the [Client] entity [ValueObject]s needed for registration
class ClientRegisterValidator with RegisterValidator<Client> {
  @override
  List<ValueObject> getValues(Client entity) {
    return [entity.name];
  }
}
