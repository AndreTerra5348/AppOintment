part of 'details_bloc.dart';

/// Define [EntityMixin] details events
@freezed
class DetailsEvent<T extends EntityMixin> with _$DetailsEvent<T> {
  /// Event to load an [EntityMixin]
  const factory DetailsEvent.loadEmited({required LoadState<T> state}) =
      _LoadEmited<T>;

  /// Event to edit an [EntityMixin]
  const factory DetailsEvent.editEmited({required EditState state}) =
      _EditEmited<T>;

  /// Event to delete an [EntityMixin]
  const factory DetailsEvent.deleteEmited({required DeleteState state}) =
      _DeleteEmited<T>;
}
