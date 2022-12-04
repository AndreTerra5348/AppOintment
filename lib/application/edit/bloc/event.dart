part of 'bloc.dart';

@freezed
class EditEvent<T extends EntityMixin> with _$EditEvent {
  const factory EditEvent.editPressed() = _EditPressed;
  const factory EditEvent.savePressed({required T entity}) = _SavePressed;
}
