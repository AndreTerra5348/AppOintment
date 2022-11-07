import 'package:appointment/domain/common/string_value.dart';
import 'package:appointment/domain/common/uid.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client.freezed.dart';

@freezed
abstract class Client implements _$Client {
  const Client._();

  const factory Client({required Name name, required Uid id}) = _Client;

  factory Client.withoutUid({required Name name}) =>
      Client(name: name, id: Uid());
}

class Name extends ValueObject<StringFailure, String> {
  @override
  final Either<Iterable<StringFailure>, String> value;
  const Name._(this.value);

  factory Name(String text) {
    Iterable<Validation<StringFailure, String>> validators = [
      const NonEmptyStringValidator()
    ];
    return Name._(validate(validators, text));
  }
}
