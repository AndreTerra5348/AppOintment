import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:dartz/dartz.dart';

mixin EntityMixin {
  bool get isValid => values.every((element) => element.isValid);

  bool get isNotValid => !isValid;

  List<ValueObject<dynamic, dynamic>> get values;

  Option<EntityMixin> get validity {
    return values.every((element) => element.isValid) ? some(this) : none();
  }

  Uid get id;
}
