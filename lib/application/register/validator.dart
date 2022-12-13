import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:dartz/dartz.dart';

abstract class RegisterValidator<T extends EntityMixin> {
  Option<T> validate(T entity);
}
