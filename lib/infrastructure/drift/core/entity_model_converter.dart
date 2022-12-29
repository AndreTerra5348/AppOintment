/// Drift EntityModelConverter definition
import 'package:appointment/domain/common/common_values.dart';
import 'package:drift/drift.dart';

/// Converts between entities and models
abstract class EntityModelConverter<T_Entity, T_Model extends DataClass> {
  /// Converts a [Model] to an [Entity]
  T_Entity toEntity(T_Model model);

  /// Converts an [Entity] to a [Model] with an [Uid]
  T_Entity toEntityWithId(T_Entity entity, Uid id);

  /// Converts an [Entity] to a [UpdateCompanion] for use in an insert statement
  UpdateCompanion<T_Model> toUpdateCompanion(T_Entity entity);
}
