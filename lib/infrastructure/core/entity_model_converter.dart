import 'package:appointment/domain/common/uid.dart';
import 'package:drift/drift.dart';

abstract class EntityModelConverter<T_Entity, T_Model extends DataClass> {
  T_Entity toEntity(T_Model model);
  T_Entity toEntityWithId(T_Entity entity, Uid id);
  UpdateCompanion<T_Model> toUpdateCompanion(T_Entity entity);
}
