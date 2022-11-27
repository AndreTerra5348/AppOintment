import 'package:freezed_annotation/freezed_annotation.dart';

part 'status.freezed.dart';

@freezed
class ClientDetailsStatus with _$ClientDetailsStatus {
  const factory ClientDetailsStatus.loading() = _Loading;
  const factory ClientDetailsStatus.ready() = _Ready;
}
