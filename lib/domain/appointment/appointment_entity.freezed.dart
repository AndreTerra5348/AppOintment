// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Appointment {
  Identifier get id => throw _privateConstructorUsedError;
  Identifier get clientId => throw _privateConstructorUsedError;
  DateTimeRange get dateTimeRange => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentCopyWith<Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentCopyWith<$Res> {
  factory $AppointmentCopyWith(
          Appointment value, $Res Function(Appointment) then) =
      _$AppointmentCopyWithImpl<$Res, Appointment>;
  @useResult
  $Res call({Identifier id, Identifier clientId, DateTimeRange dateTimeRange});
}

/// @nodoc
class _$AppointmentCopyWithImpl<$Res, $Val extends Appointment>
    implements $AppointmentCopyWith<$Res> {
  _$AppointmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? dateTimeRange = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Identifier,
      dateTimeRange: null == dateTimeRange
          ? _value.dateTimeRange
          : dateTimeRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppointmentCopyWith<$Res>
    implements $AppointmentCopyWith<$Res> {
  factory _$$_AppointmentCopyWith(
          _$_Appointment value, $Res Function(_$_Appointment) then) =
      __$$_AppointmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Identifier id, Identifier clientId, DateTimeRange dateTimeRange});
}

/// @nodoc
class __$$_AppointmentCopyWithImpl<$Res>
    extends _$AppointmentCopyWithImpl<$Res, _$_Appointment>
    implements _$$_AppointmentCopyWith<$Res> {
  __$$_AppointmentCopyWithImpl(
      _$_Appointment _value, $Res Function(_$_Appointment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? clientId = null,
    Object? dateTimeRange = null,
  }) {
    return _then(_$_Appointment(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as Identifier,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as Identifier,
      dateTimeRange: null == dateTimeRange
          ? _value.dateTimeRange
          : dateTimeRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$_Appointment extends _Appointment {
  const _$_Appointment(
      {required this.id, required this.clientId, required this.dateTimeRange})
      : super._();

  @override
  final Identifier id;
  @override
  final Identifier clientId;
  @override
  final DateTimeRange dateTimeRange;

  @override
  String toString() {
    return 'Appointment(id: $id, clientId: $clientId, dateTimeRange: $dateTimeRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Appointment &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.dateTimeRange, dateTimeRange) ||
                other.dateTimeRange == dateTimeRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, clientId, dateTimeRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      __$$_AppointmentCopyWithImpl<_$_Appointment>(this, _$identity);
}

abstract class _Appointment extends Appointment {
  const factory _Appointment(
      {required final Identifier id,
      required final Identifier clientId,
      required final DateTimeRange dateTimeRange}) = _$_Appointment;
  const _Appointment._() : super._();

  @override
  Identifier get id;
  @override
  Identifier get clientId;
  @override
  DateTimeRange get dateTimeRange;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentCopyWith<_$_Appointment> get copyWith =>
      throw _privateConstructorUsedError;
}
