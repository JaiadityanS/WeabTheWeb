// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ware_products_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WareProductsRecord> _$wareProductsRecordSerializer =
    new _$WareProductsRecordSerializer();

class _$WareProductsRecordSerializer
    implements StructuredSerializer<WareProductsRecord> {
  @override
  final Iterable<Type> types = const [WareProductsRecord, _$WareProductsRecord];
  @override
  final String wireName = 'WareProductsRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WareProductsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.riceId;
    if (value != null) {
      result
        ..add('Rice_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.riceName;
    if (value != null) {
      result
        ..add('Rice_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.riceQuantity;
    if (value != null) {
      result
        ..add('Rice_quantity')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pricePerkg;
    if (value != null) {
      result
        ..add('price_perkg')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.riceTrader;
    if (value != null) {
      result
        ..add('Rice_trader')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('Location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phNo;
    if (value != null) {
      result
        ..add('ph_no')
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
  WareProductsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WareProductsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Rice_id':
          result.riceId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rice_name':
          result.riceName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Rice_quantity':
          result.riceQuantity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'price_perkg':
          result.pricePerkg = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Rice_trader':
          result.riceTrader = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ph_no':
          result.phNo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
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

class _$WareProductsRecord extends WareProductsRecord {
  @override
  final String? riceId;
  @override
  final String? riceName;
  @override
  final String? riceQuantity;
  @override
  final int? pricePerkg;
  @override
  final String? riceTrader;
  @override
  final String? location;
  @override
  final String? phNo;
  @override
  final String? imageUrl;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$WareProductsRecord(
          [void Function(WareProductsRecordBuilder)? updates]) =>
      (new WareProductsRecordBuilder()..update(updates))._build();

  _$WareProductsRecord._(
      {this.riceId,
      this.riceName,
      this.riceQuantity,
      this.pricePerkg,
      this.riceTrader,
      this.location,
      this.phNo,
      this.imageUrl,
      this.ffRef})
      : super._();

  @override
  WareProductsRecord rebuild(
          void Function(WareProductsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WareProductsRecordBuilder toBuilder() =>
      new WareProductsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WareProductsRecord &&
        riceId == other.riceId &&
        riceName == other.riceName &&
        riceQuantity == other.riceQuantity &&
        pricePerkg == other.pricePerkg &&
        riceTrader == other.riceTrader &&
        location == other.location &&
        phNo == other.phNo &&
        imageUrl == other.imageUrl &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, riceId.hashCode), riceName.hashCode),
                                riceQuantity.hashCode),
                            pricePerkg.hashCode),
                        riceTrader.hashCode),
                    location.hashCode),
                phNo.hashCode),
            imageUrl.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WareProductsRecord')
          ..add('riceId', riceId)
          ..add('riceName', riceName)
          ..add('riceQuantity', riceQuantity)
          ..add('pricePerkg', pricePerkg)
          ..add('riceTrader', riceTrader)
          ..add('location', location)
          ..add('phNo', phNo)
          ..add('imageUrl', imageUrl)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class WareProductsRecordBuilder
    implements Builder<WareProductsRecord, WareProductsRecordBuilder> {
  _$WareProductsRecord? _$v;

  String? _riceId;
  String? get riceId => _$this._riceId;
  set riceId(String? riceId) => _$this._riceId = riceId;

  String? _riceName;
  String? get riceName => _$this._riceName;
  set riceName(String? riceName) => _$this._riceName = riceName;

  String? _riceQuantity;
  String? get riceQuantity => _$this._riceQuantity;
  set riceQuantity(String? riceQuantity) => _$this._riceQuantity = riceQuantity;

  int? _pricePerkg;
  int? get pricePerkg => _$this._pricePerkg;
  set pricePerkg(int? pricePerkg) => _$this._pricePerkg = pricePerkg;

  String? _riceTrader;
  String? get riceTrader => _$this._riceTrader;
  set riceTrader(String? riceTrader) => _$this._riceTrader = riceTrader;

  String? _location;
  String? get location => _$this._location;
  set location(String? location) => _$this._location = location;

  String? _phNo;
  String? get phNo => _$this._phNo;
  set phNo(String? phNo) => _$this._phNo = phNo;

  String? _imageUrl;
  String? get imageUrl => _$this._imageUrl;
  set imageUrl(String? imageUrl) => _$this._imageUrl = imageUrl;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  WareProductsRecordBuilder() {
    WareProductsRecord._initializeBuilder(this);
  }

  WareProductsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _riceId = $v.riceId;
      _riceName = $v.riceName;
      _riceQuantity = $v.riceQuantity;
      _pricePerkg = $v.pricePerkg;
      _riceTrader = $v.riceTrader;
      _location = $v.location;
      _phNo = $v.phNo;
      _imageUrl = $v.imageUrl;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WareProductsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WareProductsRecord;
  }

  @override
  void update(void Function(WareProductsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WareProductsRecord build() => _build();

  _$WareProductsRecord _build() {
    final _$result = _$v ??
        new _$WareProductsRecord._(
            riceId: riceId,
            riceName: riceName,
            riceQuantity: riceQuantity,
            pricePerkg: pricePerkg,
            riceTrader: riceTrader,
            location: location,
            phNo: phNo,
            imageUrl: imageUrl,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
