// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datas_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DatasRecord> _$datasRecordSerializer = new _$DatasRecordSerializer();

class _$DatasRecordSerializer implements StructuredSerializer<DatasRecord> {
  @override
  final Iterable<Type> types = const [DatasRecord, _$DatasRecord];
  @override
  final String wireName = 'DatasRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, DatasRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.role;
    if (value != null) {
      result
        ..add('role')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.team;
    if (value != null) {
      result
        ..add('team')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  DatasRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DatasRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'team':
          result.team = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$DatasRecord extends DatasRecord {
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? description;
  @override
  final String? team;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$DatasRecord([void Function(DatasRecordBuilder)? updates]) =>
      (new DatasRecordBuilder()..update(updates))._build();

  _$DatasRecord._(
      {this.name,
      this.email,
      this.role,
      this.description,
      this.team,
      this.ffRef})
      : super._();

  @override
  DatasRecord rebuild(void Function(DatasRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DatasRecordBuilder toBuilder() => new DatasRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DatasRecord &&
        name == other.name &&
        email == other.email &&
        role == other.role &&
        description == other.description &&
        team == other.team &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, name.hashCode), email.hashCode), role.hashCode),
                description.hashCode),
            team.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DatasRecord')
          ..add('name', name)
          ..add('email', email)
          ..add('role', role)
          ..add('description', description)
          ..add('team', team)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class DatasRecordBuilder implements Builder<DatasRecord, DatasRecordBuilder> {
  _$DatasRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _role;
  String? get role => _$this._role;
  set role(String? role) => _$this._role = role;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _team;
  String? get team => _$this._team;
  set team(String? team) => _$this._team = team;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  DatasRecordBuilder() {
    DatasRecord._initializeBuilder(this);
  }

  DatasRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _email = $v.email;
      _role = $v.role;
      _description = $v.description;
      _team = $v.team;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DatasRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DatasRecord;
  }

  @override
  void update(void Function(DatasRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DatasRecord build() => _build();

  _$DatasRecord _build() {
    final _$result = _$v ??
        new _$DatasRecord._(
            name: name,
            email: email,
            role: role,
            description: description,
            team: team,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
