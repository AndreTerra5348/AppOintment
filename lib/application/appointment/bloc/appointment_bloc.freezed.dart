// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'appointment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppointmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) loaded,
    required TResult Function(DateTimeRange dateTimeRange) dateTimeRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? loaded,
    TResult? Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? loaded,
    TResult Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DateTimeRangeChanged value) dateTimeRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentEventCopyWith<$Res> {
  factory $AppointmentEventCopyWith(
          AppointmentEvent value, $Res Function(AppointmentEvent) then) =
      _$AppointmentEventCopyWithImpl<$Res, AppointmentEvent>;
}

/// @nodoc
class _$AppointmentEventCopyWithImpl<$Res, $Val extends AppointmentEvent>
    implements $AppointmentEventCopyWith<$Res> {
  _$AppointmentEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({Appointment appointment});

  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_$_Loaded(
      appointment: null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value));
    });
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.appointment});

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentEvent.loaded(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) loaded,
    required TResult Function(DateTimeRange dateTimeRange) dateTimeRangeChanged,
  }) {
    return loaded(appointment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? loaded,
    TResult? Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
  }) {
    return loaded?.call(appointment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? loaded,
    TResult Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(appointment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DateTimeRangeChanged value) dateTimeRangeChanged,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements AppointmentEvent {
  const factory _Loaded({required final Appointment appointment}) = _$_Loaded;

  Appointment get appointment;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DateTimeRangeChangedCopyWith<$Res> {
  factory _$$_DateTimeRangeChangedCopyWith(_$_DateTimeRangeChanged value,
          $Res Function(_$_DateTimeRangeChanged) then) =
      __$$_DateTimeRangeChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTimeRange dateTimeRange});
}

/// @nodoc
class __$$_DateTimeRangeChangedCopyWithImpl<$Res>
    extends _$AppointmentEventCopyWithImpl<$Res, _$_DateTimeRangeChanged>
    implements _$$_DateTimeRangeChangedCopyWith<$Res> {
  __$$_DateTimeRangeChangedCopyWithImpl(_$_DateTimeRangeChanged _value,
      $Res Function(_$_DateTimeRangeChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dateTimeRange = null,
  }) {
    return _then(_$_DateTimeRangeChanged(
      dateTimeRange: null == dateTimeRange
          ? _value.dateTimeRange
          : dateTimeRange // ignore: cast_nullable_to_non_nullable
              as DateTimeRange,
    ));
  }
}

/// @nodoc

class _$_DateTimeRangeChanged implements _DateTimeRangeChanged {
  const _$_DateTimeRangeChanged({required this.dateTimeRange});

  @override
  final DateTimeRange dateTimeRange;

  @override
  String toString() {
    return 'AppointmentEvent.dateTimeRangeChanged(dateTimeRange: $dateTimeRange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DateTimeRangeChanged &&
            (identical(other.dateTimeRange, dateTimeRange) ||
                other.dateTimeRange == dateTimeRange));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dateTimeRange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DateTimeRangeChangedCopyWith<_$_DateTimeRangeChanged> get copyWith =>
      __$$_DateTimeRangeChangedCopyWithImpl<_$_DateTimeRangeChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Appointment appointment) loaded,
    required TResult Function(DateTimeRange dateTimeRange) dateTimeRangeChanged,
  }) {
    return dateTimeRangeChanged(dateTimeRange);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Appointment appointment)? loaded,
    TResult? Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
  }) {
    return dateTimeRangeChanged?.call(dateTimeRange);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Appointment appointment)? loaded,
    TResult Function(DateTimeRange dateTimeRange)? dateTimeRangeChanged,
    required TResult orElse(),
  }) {
    if (dateTimeRangeChanged != null) {
      return dateTimeRangeChanged(dateTimeRange);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_DateTimeRangeChanged value) dateTimeRangeChanged,
  }) {
    return dateTimeRangeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
  }) {
    return dateTimeRangeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loaded value)? loaded,
    TResult Function(_DateTimeRangeChanged value)? dateTimeRangeChanged,
    required TResult orElse(),
  }) {
    if (dateTimeRangeChanged != null) {
      return dateTimeRangeChanged(this);
    }
    return orElse();
  }
}

abstract class _DateTimeRangeChanged implements AppointmentEvent {
  const factory _DateTimeRangeChanged(
      {required final DateTimeRange dateTimeRange}) = _$_DateTimeRangeChanged;

  DateTimeRange get dateTimeRange;
  @JsonKey(ignore: true)
  _$$_DateTimeRangeChangedCopyWith<_$_DateTimeRangeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppointmentState {
  Appointment get appointment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppointmentStateCopyWith<AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppointmentStateCopyWith<$Res> {
  factory $AppointmentStateCopyWith(
          AppointmentState value, $Res Function(AppointmentState) then) =
      _$AppointmentStateCopyWithImpl<$Res, AppointmentState>;
  @useResult
  $Res call({Appointment appointment});

  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class _$AppointmentStateCopyWithImpl<$Res, $Val extends AppointmentState>
    implements $AppointmentStateCopyWith<$Res> {
  _$AppointmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_value.copyWith(
      appointment: null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AppointmentCopyWith<$Res> get appointment {
    return $AppointmentCopyWith<$Res>(_value.appointment, (value) {
      return _then(_value.copyWith(appointment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppointmentStateCopyWith<$Res>
    implements $AppointmentStateCopyWith<$Res> {
  factory _$$_AppointmentStateCopyWith(
          _$_AppointmentState value, $Res Function(_$_AppointmentState) then) =
      __$$_AppointmentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Appointment appointment});

  @override
  $AppointmentCopyWith<$Res> get appointment;
}

/// @nodoc
class __$$_AppointmentStateCopyWithImpl<$Res>
    extends _$AppointmentStateCopyWithImpl<$Res, _$_AppointmentState>
    implements _$$_AppointmentStateCopyWith<$Res> {
  __$$_AppointmentStateCopyWithImpl(
      _$_AppointmentState _value, $Res Function(_$_AppointmentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? appointment = null,
  }) {
    return _then(_$_AppointmentState(
      appointment: null == appointment
          ? _value.appointment
          : appointment // ignore: cast_nullable_to_non_nullable
              as Appointment,
    ));
  }
}

/// @nodoc

class _$_AppointmentState implements _AppointmentState {
  const _$_AppointmentState({required this.appointment});

  @override
  final Appointment appointment;

  @override
  String toString() {
    return 'AppointmentState(appointment: $appointment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppointmentState &&
            (identical(other.appointment, appointment) ||
                other.appointment == appointment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, appointment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      __$$_AppointmentStateCopyWithImpl<_$_AppointmentState>(this, _$identity);
}

abstract class _AppointmentState implements AppointmentState {
  const factory _AppointmentState({required final Appointment appointment}) =
      _$_AppointmentState;

  @override
  Appointment get appointment;
  @override
  @JsonKey(ignore: true)
  _$$_AppointmentStateCopyWith<_$_AppointmentState> get copyWith =>
      throw _privateConstructorUsedError;
}
