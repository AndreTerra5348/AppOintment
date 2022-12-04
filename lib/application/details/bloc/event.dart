part of 'bloc.dart';

@freezed
class DetailsEvent<T extends EntityMixin> with _$DetailsEvent {
  const factory DetailsEvent.loaded({required T entity}) = _Loaded;
}
