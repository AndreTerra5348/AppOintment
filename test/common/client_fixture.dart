import 'package:appointment/domain/client/client_entity.dart';
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/infrastructure/drift/db.dart';

Iterable<ClientModel> generateModel({
  int amount = 1,
  int idOffset = 1,
  String name = "Bob",
}) {
  return Iterable.generate(amount).map(
    (e) => ClientModel(
      id: Uid.fromInt(e + idOffset),
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
      id: Uid.fromInt(e),
      name: Name(name),
    ),
  );
}
