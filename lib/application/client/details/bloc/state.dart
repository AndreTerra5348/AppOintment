part of 'bloc.dart';

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState.initial() = _Initial;
  const factory DetailsState.load({required LoadState<Client> state}) = _Load;
  const factory DetailsState.edit({required EditState state}) = _Edit;
  const factory DetailsState.delete({required DeleteState state}) = _Delete;
}
