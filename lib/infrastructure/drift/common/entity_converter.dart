import 'package:appointment/domain/common/common_values.dart';
import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:drift/drift.dart';

abstract class EntityConverter<T_Model extends DataClass,
    T_Entity extends EntityMixin> {
  T_Entity toEntity(T_Model model);
  T_Entity copyWithId(T_Entity entity, Identifier id);
  UpdateCompanion<T_Model> toCompanion(T_Entity entity);
}
