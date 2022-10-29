// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'addv_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddvRecord> _$addvRecordSerializer = new _$AddvRecordSerializer();

class _$AddvRecordSerializer implements StructuredSerializer<AddvRecord> {
  @override
  final Iterable<Type> types = const [AddvRecord, _$AddvRecord];
  @override
  final String wireName = 'AddvRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddvRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.name;
    if (value != null) {
      result
        ..add('Name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.oderDate;
    if (value != null) {
      result
        ..add('Oder_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phoneNo;
    if (value != null) {
      result
        ..add('Phone_no')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.key;
    if (value != null) {
      result
        ..add('Key')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.image;
    if (value != null) {
      result
        ..add('Image')
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
  AddvRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddvRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'Name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Oder_date':
          result.oderDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Phone_no':
          result.phoneNo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'Key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Image':
          result.image = serializers.deserialize(value,
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

class _$AddvRecord extends AddvRecord {
  @override
  final String? name;
  @override
  final String? oderDate;
  @override
  final int? phoneNo;
  @override
  final String? key;
  @override
  final String? image;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AddvRecord([void Function(AddvRecordBuilder)? updates]) =>
      (new AddvRecordBuilder()..update(updates))._build();

  _$AddvRecord._(
      {this.name,
      this.oderDate,
      this.phoneNo,
      this.key,
      this.image,
      this.ffRef})
      : super._();

  @override
  AddvRecord rebuild(void Function(AddvRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddvRecordBuilder toBuilder() => new AddvRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddvRecord &&
        name == other.name &&
        oderDate == other.oderDate &&
        phoneNo == other.phoneNo &&
        key == other.key &&
        image == other.image &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, name.hashCode), oderDate.hashCode),
                    phoneNo.hashCode),
                key.hashCode),
            image.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddvRecord')
          ..add('name', name)
          ..add('oderDate', oderDate)
          ..add('phoneNo', phoneNo)
          ..add('key', key)
          ..add('image', image)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AddvRecordBuilder implements Builder<AddvRecord, AddvRecordBuilder> {
  _$AddvRecord? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _oderDate;
  String? get oderDate => _$this._oderDate;
  set oderDate(String? oderDate) => _$this._oderDate = oderDate;

  int? _phoneNo;
  int? get phoneNo => _$this._phoneNo;
  set phoneNo(int? phoneNo) => _$this._phoneNo = phoneNo;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _image;
  String? get image => _$this._image;
  set image(String? image) => _$this._image = image;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AddvRecordBuilder() {
    AddvRecord._initializeBuilder(this);
  }

  AddvRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _oderDate = $v.oderDate;
      _phoneNo = $v.phoneNo;
      _key = $v.key;
      _image = $v.image;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddvRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddvRecord;
  }

  @override
  void update(void Function(AddvRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddvRecord build() => _build();

  _$AddvRecord _build() {
    final _$result = _$v ??
        new _$AddvRecord._(
            name: name,
            oderDate: oderDate,
            phoneNo: phoneNo,
            key: key,
            image: image,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
