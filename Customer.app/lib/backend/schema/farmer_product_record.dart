import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'farmer_product_record.g.dart';

abstract class FarmerProductRecord
    implements Built<FarmerProductRecord, FarmerProductRecordBuilder> {
  static Serializer<FarmerProductRecord> get serializer =>
      _$farmerProductRecordSerializer;

  @BuiltValueField(wireName: 'sl_no')
  int? get slNo;

  String? get commodity;

  String? get variety;

  @BuiltValueField(wireName: 'Price_per_quintal')
  int? get pricePerQuintal;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(FarmerProductRecordBuilder builder) => builder
    ..slNo = 0
    ..commodity = ''
    ..variety = ''
    ..pricePerQuintal = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('farmer_product');

  static Stream<FarmerProductRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<FarmerProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  FarmerProductRecord._();
  factory FarmerProductRecord(
          [void Function(FarmerProductRecordBuilder) updates]) =
      _$FarmerProductRecord;

  static FarmerProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createFarmerProductRecordData({
  int? slNo,
  String? commodity,
  String? variety,
  int? pricePerQuintal,
}) {
  final firestoreData = serializers.toFirestore(
    FarmerProductRecord.serializer,
    FarmerProductRecord(
      (f) => f
        ..slNo = slNo
        ..commodity = commodity
        ..variety = variety
        ..pricePerQuintal = pricePerQuintal,
    ),
  );

  return firestoreData;
}
