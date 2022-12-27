part of 'details_bloc.dart';

@freezed
class DetailsState<T extends EntityMixin> with _$DetailsState<T> {
  const factory DetailsState.initial() = _Initial<T>;
  const factory DetailsState.load({required LoadState<T> state}) = _Load<T>;
  const factory DetailsState.edit({required EditState state}) = _Edit<T>;
  const factory DetailsState.delete({required DeleteState state}) = _Delete<T>;
}
