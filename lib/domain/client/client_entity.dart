/// Domain model Client definition.
import 'package:appointment/domain/client/client_values.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_entity.freezed.dart';

/// Represents a [Client] in the domain model.
@freezed
class Client with _$Client, EntityMixin {
  const Client._();

  /// Creates a new [Client] with a [name] and an [id].
  const factory Client({required Name name, required Identifier id}) = _Client;

  /// Creates a new [Client] with a [name] and an empty [id].
  factory Client.withoutIdentifier({required Name name}) =>
      Client(name: name, id: Identifier());

  /// [List] of all the [ValueObject] of the [Client].
  @override
  List<ValueObject<dynamic, dynamic>> get values => [name, id];
}
