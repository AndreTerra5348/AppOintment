part of 'bloc.dart';

@freezed
class DeleteEvent<T extends EntityMixin> with _$DeleteEvent<T> {
  const factory DeleteEvent.deleted({required T entity}) = _Deleted;
}
