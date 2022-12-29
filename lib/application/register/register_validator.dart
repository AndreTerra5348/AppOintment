/// Defines [RegisterValidator]
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:dartz/dartz.dart';

/// Validates entities value objects needed for registration
abstract class RegisterValidator<T extends EntityMixin> {
  /// Validates the entity
  Option<T> validate(T entity);
}
