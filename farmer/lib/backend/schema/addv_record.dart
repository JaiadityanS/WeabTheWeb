import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'addv_record.g.dart';

abstract class AddvRecord implements Built<AddvRecord, AddvRecordBuilder> {
  static Serializer<AddvRecord> get serializer => _$addvRecordSerializer;

  @BuiltValueField(wireName: 'Name')
  String? get name;

  @BuiltValueField(wireName: 'Oder_date')
  String? get oderDate;

  @BuiltValueField(wireName: 'Phone_no')
  int? get phoneNo;

  @BuiltValueField(wireName: 'Key')
  String? get key;

  @BuiltValueField(wireName: 'Image')
  String? get image;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  DocumentReference get parentReference => reference.parent.parent!;

  static void _initializeBuilder(AddvRecordBuilder builder) => builder
    ..name = ''
    ..oderDate = ''
    ..phoneNo = 0
    ..key = ''
    ..image = '';

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('Addv')
          : FirebaseFirestore.instance.collectionGroup('Addv');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('Addv').doc();

  static Stream<AddvRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AddvRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AddvRecord._();
  factory AddvRecord([void Function(AddvRecordBuilder) updates]) = _$AddvRecord;

  static AddvRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAddvRecordData({
  String? name,
  String? oderDate,
  int? phoneNo,
  String? key,
  String? image,
}) {
  final firestoreData = serializers.toFirestore(
    AddvRecord.serializer,
    AddvRecord(
      (a) => a
        ..name = name
        ..oderDate = oderDate
        ..phoneNo = phoneNo
        ..key = key
        ..image = image,
    ),
  );

  return firestoreData;
}
