part of 'bloc.dart';

@freezed
class RegisterEvent<T extends EntityMixin> with _$RegisterEvent {
  const factory RegisterEvent.submitted({required T entity}) = _Submitted<T>;
}
