part of 'edit_bloc.dart';

/// Defines [EntityMixin] editing events
@freezed
class EditEvent<T extends EntityMixin> with _$EditEvent<T> {
  /// Event to edit an [EntityMixin]
  const factory EditEvent.editPressed() = _EditPressed<T>;

  /// Event to save the edited [EntityMixin]
  const factory EditEvent.savePressed({required T entity}) = _SavePressed<T>;

  /// Event to cancel the editing of an [EntityMixin]
  const factory EditEvent.cancelPressed() = _CancelPressed<T>;
}
