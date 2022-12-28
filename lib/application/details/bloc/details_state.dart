part of 'details_bloc.dart';

/// Define [EntityMixin] details states
@freezed
class DetailsState<T extends EntityMixin> with _$DetailsState<T> {
  /// Emitted when [DetailsBloc] is initialized
  const factory DetailsState.initial() = _Initial<T>;

  /// Emitted when [LoadBloc] emits [LoadState]
  const factory DetailsState.load({required LoadState<T> state}) = _Load<T>;

  /// Emitted when [EditBloc] emits [EditState]
  const factory DetailsState.edit({required EditState state}) = _Edit<T>;

  /// Emitted when [DeleteBloc] emits [DeleteState]
  const factory DetailsState.delete({required DeleteState state}) = _Delete<T>;
}
