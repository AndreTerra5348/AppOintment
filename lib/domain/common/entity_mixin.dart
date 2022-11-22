import 'package:appointment/domain/common/value_object.dart';

mixin EntityMixin {
  bool get isValid => values.every((element) => element.isValid);

  bool get isNotValid => !isValid;

  List<ValueObject<dynamic, dynamic>> get values;
}
