// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class ClientModel extends DataClass implements Insertable<ClientModel> {
  final Uid id;
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
      id: serializer.fromJson<Uid>(json['id']),
      name: serializer.fromJson<Name>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<Uid>(id),
      'name': serializer.toJson<Name>(name),
    };
  }

  ClientModel copyWith({Uid? id, Name? name}) => ClientModel(
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
  final Value<Uid> id;
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

  ClientModelsCompanion copyWith({Value<Uid>? id, Value<Name>? name}) {
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
  late final GeneratedColumnWithTypeConverter<Uid, int> id =
      GeneratedColumn<int>('id', aliasedName, false,
              type: DriftSqlType.int,
              requiredDuringInsert: false,
              defaultConstraints: 'PRIMARY KEY AUTOINCREMENT')
          .withConverter<Uid>($ClientModelsTable.$converter0);
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

  static TypeConverter<Uid, int> $converter0 = UidConverter();
  static TypeConverter<Name, String> $converter1 = NameConverter();
}

abstract class _$DriftDb extends GeneratedDatabase {
  _$DriftDb(QueryExecutor e) : super(e);
  late final $ClientModelsTable clientModels = $ClientModelsTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [clientModels];
}
