part of 'bloc.dart';

@freezed
class RegisterEvent<T extends EntityMixin> with _$RegisterEvent<T> {
  const factory RegisterEvent.registered({required T entity}) = _Registered<T>;
}
