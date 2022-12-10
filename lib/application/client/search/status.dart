import 'package:appointment/infrastructure/core/page_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class ClientSearchStatus with _$ClientSearchStatus {
  const ClientSearchStatus._();
  const factory ClientSearchStatus.loading() = _Loading;
  const factory ClientSearchStatus.success() = _Success;
  const factory ClientSearchStatus.empty() = _Empty;
  const factory ClientSearchStatus.failure(
      {required PageServiceFailure failure}) = _Failure;

  bool get isLoading => this is _Loading;
  bool get isSuccess => this is _Success;
  bool get isFailure => this is _Failure;
}
