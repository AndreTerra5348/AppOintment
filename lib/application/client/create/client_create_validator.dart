/// Defines [ClientCreateValidator]
import 'package:appointment/application/create/create_validator.dart';
import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/common/value_object.dart';

/// Validates the [Client] entity [ValueObject]s needed for creation
class ClientCreateValidator with CreateValidator<Client> {
  @override
  List<ValueObject> getValues(Client entity) {
    return [entity.name];
  }
}
