import 'package:appointment/domain/common/entity_mixin.dart';
import 'package:appointment/domain/common/values.dart';
import 'package:drift/drift.dart';

abstract class EntityModelConverter<T_Entity, T_Model extends DataClass> {
  T_Entity toEntity(T_Model model);
  T_Entity toEntityWithId(T_Entity entity, Uid id);
  UpdateCompanion<T_Model> toUpdateCompanion(T_Entity entity);
  T_Model toModel(T_Entity entity);
}
