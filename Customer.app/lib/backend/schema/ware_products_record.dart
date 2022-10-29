import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ware_products_record.g.dart';

abstract class WareProductsRecord
    implements Built<WareProductsRecord, WareProductsRecordBuilder> {
  static Serializer<WareProductsRecord> get serializer =>
      _$wareProductsRecordSerializer;

  @BuiltValueField(wireName: 'Rice_id')
  String? get riceId;

  @BuiltValueField(wireName: 'Rice_name')
  String? get riceName;

  @BuiltValueField(wireName: 'Rice_quantity')
  String? get riceQuantity;

  @BuiltValueField(wireName: 'price_perkg')
  int? get pricePerkg;

  @BuiltValueField(wireName: 'Rice_trader')
  String? get riceTrader;

  @BuiltValueField(wireName: 'Location')
  String? get location;

  @BuiltValueField(wireName: 'ph_no')
  String? get phNo;

  @BuiltValueField(wireName: 'image_url')
  String? get imageUrl;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(WareProductsRecordBuilder builder) => builder
    ..riceId = ''
    ..riceName = ''
    ..riceQuantity = ''
    ..pricePerkg = 0
    ..riceTrader = ''
    ..location = ''
    ..phNo = ''
    ..imageUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Ware_products');

  static Stream<WareProductsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<WareProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  WareProductsRecord._();
  factory WareProductsRecord(
          [void Function(WareProductsRecordBuilder) updates]) =
      _$WareProductsRecord;

  static WareProductsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createWareProductsRecordData({
  String? riceId,
  String? riceName,
  String? riceQuantity,
  int? pricePerkg,
  String? riceTrader,
  String? location,
  String? phNo,
  String? imageUrl,
}) {
  final firestoreData = serializers.toFirestore(
    WareProductsRecord.serializer,
    WareProductsRecord(
      (w) => w
        ..riceId = riceId
        ..riceName = riceName
        ..riceQuantity = riceQuantity
        ..pricePerkg = pricePerkg
        ..riceTrader = riceTrader
        ..location = location
        ..phNo = phNo
        ..imageUrl = imageUrl,
    ),
  );

  return firestoreData;
}
