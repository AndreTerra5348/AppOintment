/// Defines [CreateValidator]
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/value_object.dart';
import 'package:dartz/dartz.dart';

/// Validates entities value objects needed for creation
abstract class CreateValidator<T extends EntityMixin> {
  /// A [List] of all the [ValueObject] of the entity, needed for creation.
  List<ValueObject<dynamic, dynamic>> getValues(T entity);

  /// Validates the entity
  Option<T> validate(T entity) {
    return getValues(entity).every((element) => element.isValid)
        ? some(entity)
        : none();
  }
}
