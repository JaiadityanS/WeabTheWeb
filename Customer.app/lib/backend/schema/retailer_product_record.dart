import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'retailer_product_record.g.dart';

abstract class RetailerProductRecord
    implements Built<RetailerProductRecord, RetailerProductRecordBuilder> {
  static Serializer<RetailerProductRecord> get serializer =>
      _$retailerProductRecordSerializer;

  @BuiltValueField(wireName: 'sl_no')
  int? get slNo;

  String? get commodity;

  String? get variety;

  @BuiltValueField(wireName: 'Price_per_quintal')
  int? get pricePerQuintal;

  String? get category;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: 'per_kg')
  double? get perKg;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RetailerProductRecordBuilder builder) =>
      builder
        ..slNo = 0
        ..commodity = ''
        ..variety = ''
        ..pricePerQuintal = 0
        ..category = ''
        ..imageUrl = ''
        ..perKg = 0.0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Retailer_product');

  static Stream<RetailerProductRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RetailerProductRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RetailerProductRecord._();
  factory RetailerProductRecord(
          [void Function(RetailerProductRecordBuilder) updates]) =
      _$RetailerProductRecord;

  static RetailerProductRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRetailerProductRecordData({
  int? slNo,
  String? commodity,
  String? variety,
  int? pricePerQuintal,
  String? category,
  String? imageUrl,
  double? perKg,
}) {
  final firestoreData = serializers.toFirestore(
    RetailerProductRecord.serializer,
    RetailerProductRecord(
      (r) => r
        ..slNo = slNo
        ..commodity = commodity
        ..variety = variety
        ..pricePerQuintal = pricePerQuintal
        ..category = category
        ..imageUrl = imageUrl
        ..perKg = perKg,
    ),
  );

  return firestoreData;
}
