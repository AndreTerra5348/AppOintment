import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/drift_db.dart';

Iterable<ClientModel> generateModel({
  int amount = 1,
  int idOffset = 1,
  String name = "Bob",
}) {
  return Iterable.generate(amount).map(
    (e) => ClientModel(
      id: Identifier.fromInt(e + idOffset),
      name: Name("Bob"),
    ),
  );
}

Iterable<Client> generateEntity({
  int amount = 1,
  String name = "Bob",
}) {
  return Iterable.generate(amount).map(
    (e) => Client(
      id: Identifier.fromInt(e),
      name: Name(name),
    ),
  );
}
