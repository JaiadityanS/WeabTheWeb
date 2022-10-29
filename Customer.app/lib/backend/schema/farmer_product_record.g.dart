// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'farmer_product_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FarmerProductRecord> _$farmerProductRecordSerializer =
    new _$FarmerProductRecordSerializer();

class _$FarmerProductRecordSerializer
    implements StructuredSerializer<FarmerProductRecord> {
  @override
  final Iterable<Type> types = const [
    FarmerProductRecord,
    _$FarmerProductRecord
  ];
  @override
  final String wireName = 'FarmerProductRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, FarmerProductRecord object,
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
  FarmerProductRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FarmerProductRecordBuilder();

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

class _$FarmerProductRecord extends FarmerProductRecord {
  @override
  final int? slNo;
  @override
  final String? commodity;
  @override
  final String? variety;
  @override
  final int? pricePerQuintal;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$FarmerProductRecord(
          [void Function(FarmerProductRecordBuilder)? updates]) =>
      (new FarmerProductRecordBuilder()..update(updates))._build();

  _$FarmerProductRecord._(
      {this.slNo,
      this.commodity,
      this.variety,
      this.pricePerQuintal,
      this.ffRef})
      : super._();

  @override
  FarmerProductRecord rebuild(
          void Function(FarmerProductRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FarmerProductRecordBuilder toBuilder() =>
      new FarmerProductRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FarmerProductRecord &&
        slNo == other.slNo &&
        commodity == other.commodity &&
        variety == other.variety &&
        pricePerQuintal == other.pricePerQuintal &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, slNo.hashCode), commodity.hashCode),
                variety.hashCode),
            pricePerQuintal.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FarmerProductRecord')
          ..add('slNo', slNo)
          ..add('commodity', commodity)
          ..add('variety', variety)
          ..add('pricePerQuintal', pricePerQuintal)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class FarmerProductRecordBuilder
    implements Builder<FarmerProductRecord, FarmerProductRecordBuilder> {
  _$FarmerProductRecord? _$v;

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

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  FarmerProductRecordBuilder() {
    FarmerProductRecord._initializeBuilder(this);
  }

  FarmerProductRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _slNo = $v.slNo;
      _commodity = $v.commodity;
      _variety = $v.variety;
      _pricePerQuintal = $v.pricePerQuintal;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FarmerProductRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FarmerProductRecord;
  }

  @override
  void update(void Function(FarmerProductRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FarmerProductRecord build() => _build();

  _$FarmerProductRecord _build() {
    final _$result = _$v ??
        new _$FarmerProductRecord._(
            slNo: slNo,
            commodity: commodity,
            variety: variety,
            pricePerQuintal: pricePerQuintal,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
