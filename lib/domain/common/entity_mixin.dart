/// [EntityMixin] definition.
import 'package:appointment/domain/common/value_object.dart';
import 'package:appointment/domain/common/common_values.dart';
import 'package:dartz/dartz.dart';

/// Provides validation checks and id for entities.
mixin EntityMixin {
  /// Returns true if all the [values] of the entity are valid.
  bool get isValid => values.every((element) => element.isValid);

  /// A [List] of all the [ValueObject] of the entity.
  List<ValueObject<dynamic, dynamic>> get values;

  /// Returns this [EntityMixin] if all the [values] are valid.
  /// Otherwise returns [none].
  Option<EntityMixin> get validity {
    return values.every((element) => element.isValid) ? some(this) : none();
  }

  /// The id of the entity.
  Identifier get id;
}
