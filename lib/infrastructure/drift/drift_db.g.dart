// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ClientModel extends DataClass implements Insertable<ClientModel> {
  /// The id of the [ClientModel]
  final Identifier id;

  /// The name of the [ClientModel]
  final Name name;
  const ClientModel({required this.id, required this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      final converter = $ClientModelsTable.$converter0;
      map['id'] = Variable<int>(converter.toSql(id));
    }
    {
      final converter = $ClientModelsTable.$converter1;
      map['name'] = Variable<String>(converter.toSql(name));
    }
    return map;
  }

  ClientModelsCompanion toCompanion(bool nullToAbsent) {
    return ClientModelsCompanion(
      id: Value(id),
      name: Value(name),
    );
  }

  factory ClientModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ClientModel(
      id: serializer.fromJson<Identifier>(json['id']),
      name: serializer.fromJson<Name>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<Identifier>(id),
      'name': serializer.toJson<Name>(name),
    };
  }

  ClientModel copyWith({Identifier? id, Name? name}) => ClientModel(
        id: id ?? this.id,
        name: name ?? this.name,
      );
  @override
  String toString() {
    return (StringBuffer('ClientModel(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ClientModel && other.id == this.id && other.name == this.name);
}

class ClientModelsCompanion extends UpdateCompanion<ClientModel> {
  final Value<Identifier> id;
  final Value<Name> name;
  const ClientModelsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ClientModelsCompanion.insert({
    this.id = const Value.absent(),
    required Name name,
  }) : name = Value(name);
  static Insertable<ClientModel> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ClientModelsCompanion copyWith({Value<Identifier>? id, Value<Name>? name}) {
    return ClientModelsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      final converter = $ClientModelsTable.$converter0;
      map['id'] = Variable<int>(converter.toSql(id.value));
    }
    if (name.present) {
      final converter = $ClientModelsTable.$converter1;
      map['name'] = Variable<String>(converter.toSql(name.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ClientModelsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $ClientModelsTable extends ClientModels
    with TableInfo<$ClientModelsTable, ClientModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientModelsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumnWithTypeConverter<Identifier, int> id =
      GeneratedColumn<int>('id', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: 'PRIMARY KEY AUTOINCREMENT')
          .withConverter<Identifier>($ClientModelsTable.$converter0);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumnWithTypeConverter<Name, String> name =
      GeneratedColumn<String>('name', aliasedName, false,
              additionalChecks: GeneratedColumn.checkTextLength(
                  minTextLength: 1, maxTextLength: 32),
              type: DriftSqlType.string,
              requiredDuringInsert: true)
          .withConverter<Name>($ClientModelsTable.$converter1);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? 'client_models';
  @override
  String get actualTableName => 'client_models';
  @override
  VerificationContext validateIntegrity(Insertable<ClientModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_idMeta, const VerificationResult.success());
    context.handle(_nameMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ClientModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientModel(
      id: $ClientModelsTable.$converter0.fromSql(attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      name: $ClientModelsTable.$converter1.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!),
    );
  }

  @override
  $ClientModelsTable createAlias(String alias) {
    return $ClientModelsTable(attachedDatabase, alias);
  }

  static TypeConverter<Identifier, int> $converter0 = IdentifierConverter();
  static TypeConverter<Name, String> $converter1 = NameConverter();
}

class AppointmentModel extends DataClass
    implements Insertable<AppointmentModel> {
  /// The id of the [AppointmentModel]
  final Identifier id;

  /// The start DateTime of the [AppointmentModel]
  final DateTime start;

  /// The end DateTime of the [AppointmentModel]
  final DateTime end;
  const AppointmentModel(
      {required this.id, required this.start, required this.end});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    {
      final converter = $AppointmentModelsTable.$converter0;
      map['id'] = Variable<int>(converter.toSql(id));
    }
    map['start'] = Variable<DateTime>(start);
    map['end'] = Variable<DateTime>(end);
    return map;
  }

  AppointmentModelsCompanion toCompanion(bool nullToAbsent) {
    return AppointmentModelsCompanion(
      id: Value(id),
      start: Value(start),
      end: Value(end),
    );
  }

  factory AppointmentModel.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AppointmentModel(
      id: serializer.fromJson<Identifier>(json['id']),
      start: serializer.fromJson<DateTime>(json['start']),
      end: serializer.fromJson<DateTime>(json['end']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<Identifier>(id),
      'start': serializer.toJson<DateTime>(start),
      'end': serializer.toJson<DateTime>(end),
    };
  }

  AppointmentModel copyWith({Identifier? id, DateTime? start, DateTime? end}) =>
      AppointmentModel(
        id: id ?? this.id,
        start: start ?? this.start,
        end: end ?? this.end,
      );
  @override
  String toString() {
    return (StringBuffer('AppointmentModel(')
          ..write('id: $id, ')
          ..write('start: $start, ')
          ..write('end: $end')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, start, end);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AppointmentModel &&
          other.id == this.id &&
          other.start == this.start &&
          other.end == this.end);
}

class AppointmentModelsCompanion extends UpdateCompanion<AppointmentModel> {
  final Value<Identifier> id;
  final Value<DateTime> start;
  final Value<DateTime> end;
  const AppointmentModelsCompanion({
    this.id = const Value.absent(),
    this.start = const Value.absent(),
    this.end = const Value.absent(),
  });
  AppointmentModelsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime start,
    required DateTime end,
  })  : start = Value(start),
        end = Value(end);
  static Insertable<AppointmentModel> custom({
    Expression<int>? id,
    Expression<DateTime>? start,
    Expression<DateTime>? end,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (start != null) 'start': start,
      if (end != null) 'end': end,
    });
  }

  AppointmentModelsCompanion copyWith(
      {Value<Identifier>? id, Value<DateTime>? start, Value<DateTime>? end}) {
    return AppointmentModelsCompanion(
      id: id ?? this.id,
      start: start ?? this.start,
      end: end ?? this.end,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      final converter = $AppointmentModelsTable.$converter0;
      map['id'] = Variable<int>(converter.toSql(id.value));
    }
    if (start.present) {
      map['start'] = Variable<DateTime>(start.value);
    }
    if (end.present) {
      map['end'] = Variable<DateTime>(end.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AppointmentModelsCompanion(')
          ..write('id: $id, ')
          ..write('start: $start, ')
          ..write('end: $end')
          ..write(')'))
        .toString();
  }
}

class $AppointmentModelsTable extends AppointmentModels
    with TableInfo<$AppointmentModelsTable, AppointmentModel> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AppointmentModelsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumnWithTypeConverter<Identifier, int> id =
      GeneratedColumn<int>('id', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: 'PRIMARY KEY AUTOINCREMENT')
          .withConverter<Identifier>($AppointmentModelsTable.$converter0);
  final VerificationMeta _startMeta = const VerificationMeta('start');
  @override
  late final GeneratedColumn<DateTime> start = GeneratedColumn<DateTime>(
      'start', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _endMeta = const VerificationMeta('end');
  @override
  late final GeneratedColumn<DateTime> end = GeneratedColumn<DateTime>(
      'end', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, start, end];
  @override
  String get aliasedName => _alias ?? 'appointment_models';
  @override
  String get actualTableName => 'appointment_models';
  @override
  VerificationContext validateIntegrity(Insertable<AppointmentModel> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    context.handle(_idMeta, const VerificationResult.success());
    if (data.containsKey('start')) {
      context.handle(
          _startMeta, start.isAcceptableOrUnknown(data['start']!, _startMeta));
    } else if (isInserting) {
      context.missing(_startMeta);
    }
    if (data.containsKey('end')) {
      context.handle(
          _endMeta, end.isAcceptableOrUnknown(data['end']!, _endMeta));
    } else if (isInserting) {
      context.missing(_endMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  AppointmentModel map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AppointmentModel(
      id: $AppointmentModelsTable.$converter0.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!),
      start: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}start'])!,
      end: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}end'])!,
    );
  }

  @override
  $AppointmentModelsTable createAlias(String alias) {
    return $AppointmentModelsTable(attachedDatabase, alias);
  }

  static TypeConverter<Identifier, int> $converter0 = IdentifierConverter();
}

abstract class _$DriftDb extends GeneratedDatabase {
  _$DriftDb(QueryExecutor e) : super(e);
  late final $ClientModelsTable clientModels = $ClientModelsTable(this);
  late final $AppointmentModelsTable appointmentModels =
      $AppointmentModelsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [clientModels, appointmentModels];
}
