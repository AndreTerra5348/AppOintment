part of 'edit_bloc.dart';

@freezed
class EditEvent<T extends EntityMixin> with _$EditEvent<T> {
  const factory EditEvent.editPressed() = _EditPressed<T>;
  const factory EditEvent.savePressed({required T entity}) = _SavePressed<T>;
  const factory EditEvent.cancelPressed() = _CancelPressed<T>;
}
