part of 'bloc.dart';

@freezed
class ClientDetailsState with _$ClientDetailsState {
  const factory ClientDetailsState.initial() = _Initial;
  const factory ClientDetailsState.load({required LoadState<Client> state}) =
      _Load;
  const factory ClientDetailsState.edit({required EditState state}) = _Edit;
  const factory ClientDetailsState.delete({required DeleteState state}) =
      _Delete;
}
