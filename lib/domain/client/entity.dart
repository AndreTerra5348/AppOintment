import 'package:appointment/domain/client/values.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'entity.freezed.dart';

@freezed
abstract class Client with _$Client {
  const Client._();

  const factory Client({required Name name, required Uid id}) = _Client;

  factory Client.withoutUid({required Name name}) =>
      Client(name: name, id: Uid());
}
