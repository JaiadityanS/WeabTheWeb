// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'retailer_product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RetailerProductRecord> _$retailerProductRecordSerializer =
    new _$RetailerProductRecordSerializer();

class _$RetailerProductRecordSerializer
    implements StructuredSerializer<RetailerProductRecord> {
  @override
  final Iterable<Type> types = const [
    RetailerProductRecord,
    _$RetailerProductRecord
  ];
  @override
  final String wireName = 'RetailerProductRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RetailerProductRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.slNo;
    if (value != null) {
      result
        ..add('sl_no')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.commodity;
    if (value != null) {
      result
        ..add('commodity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.variety;
    if (value != null) {
      result
        ..add('variety')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pricePerQuintal;
    if (value != null) {
      result
        ..add('Price_per_quintal')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.imageUrl;
    if (value != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.perKg;
    if (value != null) {
      result
        ..add('per_kg')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
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
  RetailerProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RetailerProductRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'sl_no':
          result.slNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'commodity':
          result.commodity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'variety':
          result.variety = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Price_per_quintal':
          result.pricePerQuintal = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'per_kg':
          result.perKg = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
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

class _$RetailerProductRecord extends RetailerProductRecord {
  @override
  final int? slNo;
  @override
  final String? commodity;
  @override
  final String? variety;
  @override
  final int? pricePerQuintal;
  @override
  final String? category;
  @override
  final String? imageUrl;
  @override
  final double? perKg;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RetailerProductRecord(
          [void Function(RetailerProductRecordBuilder)? updates]) =>
      (new RetailerProductRecordBuilder()..update(updates))._build();

  _$RetailerProductRecord._(
      {this.slNo,
      this.commodity,
      this.variety,
      this.pricePerQuintal,
      this.category,
      this.imageUrl,
      this.perKg,
      this.ffRef})
      : super._();

  @override
  RetailerProductRecord rebuild(
          void Function(RetailerProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RetailerProductRecordBuilder toBuilder() =>
      new RetailerProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RetailerProductRecord &&
        slNo == other.slNo &&
        commodity == other.commodity &&
        variety == other.variety &&
        pricePerQuintal == other.pricePerQuintal &&
        category == other.category &&
        imageUrl == other.imageUrl &&
        perKg == other.perKg &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, slNo.hashCode), commodity.hashCode),
                            variety.hashCode),
                        pricePerQuintal.hashCode),
                    category.hashCode),
                imageUrl.hashCode),
            perKg.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RetailerProductRecord')
          ..add('slNo', slNo)
          ..add('commodity', commodity)
          ..add('variety', variety)
          ..add('pricePerQuintal', pricePerQuintal)
          ..add('category', category)
          ..add('imageUrl', imageUrl)
          ..add('perKg', perKg)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RetailerProductRecordBuilder
    implements Builder<RetailerProductRecord, RetailerProductRecordBuilder> {
  _$RetailerProductRecord? _$v;

  int? _slNo;
  int? get slNo => _$this._slNo;
  set slNo(int? slNo) => _$this._slNo = slNo;

  String? _commodity;
  String? get commodity => _$this._commodity;
  set commodity(String? commodity) => _$this._commodity = commodity;

  String? _variety;
  String? get variety => _$this._variety;
  set variety(String? variety) => _$this._variety = variety;

  int? _pricePerQuintal;
  int? get pricePerQuintal => _$this._pricePerQuintal;
  set pricePerQuintal(int? pricePerQuintal) =>
      _$this._pricePerQuintal = pricePerQuintal;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  double? _perKg;
  double? get perKg => _$this._perKg;
  set perKg(double? perKg) => _$this._perKg = perKg;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RetailerProductRecordBuilder() {
    RetailerProductRecord._initializeBuilder(this);
  }

  RetailerProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slNo = $v.slNo;
      _commodity = $v.commodity;
      _variety = $v.variety;
      _pricePerQuintal = $v.pricePerQuintal;
      _category = $v.category;
      _imageUrl = $v.imageUrl;
      _perKg = $v.perKg;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RetailerProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RetailerProductRecord;
  }

  @override
  void update(void Function(RetailerProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RetailerProductRecord build() => _build();

  _$RetailerProductRecord _build() {
    final _$result = _$v ??
        new _$RetailerProductRecord._(
            slNo: slNo,
            commodity: commodity,
            variety: variety,
            pricePerQuintal: pricePerQuintal,
            category: category,
            imageUrl: imageUrl,
            perKg: perKg,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
