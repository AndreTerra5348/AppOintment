/// Defines [ClientSearchStatus]
import 'package:appointment/infrastructure/drift/core/pagination_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'client_search_status.freezed.dart';

/// Fetching [Client]s status
@freezed
class ClientSearchStatus with _$ClientSearchStatus {
  const ClientSearchStatus._();

  /// Fetching [Client]s
  const factory ClientSearchStatus.loading() = _Loading;

  /// Successfully fetched [Client]s
  const factory ClientSearchStatus.success() = _Success;

  /// No [Client]s found
  const factory ClientSearchStatus.empty() = _Empty;

  /// Failed to fetch [Client]s
  const factory ClientSearchStatus.failure(
      {required PaginationServiceFailure failure}) = _Failure;
}
