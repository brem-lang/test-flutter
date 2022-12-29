import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'datas_record.g.dart';

abstract class DatasRecord implements Built<DatasRecord, DatasRecordBuilder> {
  static Serializer<DatasRecord> get serializer => _$datasRecordSerializer;

  String? get name;

  String? get email;

  String? get role;

  String? get description;

  String? get team;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(DatasRecordBuilder builder) => builder
    ..name = ''
    ..email = ''
    ..role = ''
    ..description = ''
    ..team = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('datas');

  static Stream<DatasRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<DatasRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  DatasRecord._();
  factory DatasRecord([void Function(DatasRecordBuilder) updates]) =
      _$DatasRecord;

  static DatasRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createDatasRecordData({
  String? name,
  String? email,
  String? role,
  String? description,
  String? team,
}) {
  final firestoreData = serializers.toFirestore(
    DatasRecord.serializer,
    DatasRecord(
      (d) => d
        ..name = name
        ..email = email
        ..role = role
        ..description = description
        ..team = team,
    ),
  );

  return firestoreData;
}
