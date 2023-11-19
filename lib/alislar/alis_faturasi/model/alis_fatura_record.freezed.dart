// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alis_fatura_record.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FaturaRecord _$FaturaRecordFromJson(Map<String, dynamic> json) {
  return _FaturaRecord.fromJson(json);
}

/// @nodoc
mixin _$FaturaRecord {
  String get firmaAdi => throw _privateConstructorUsedError;
  int get faturaNo => throw _privateConstructorUsedError;
  String get faturaAdi => throw _privateConstructorUsedError;
  DateTime get tarih => throw _privateConstructorUsedError;
  int get tutar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaturaRecordCopyWith<FaturaRecord> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaturaRecordCopyWith<$Res> {
  factory $FaturaRecordCopyWith(
          FaturaRecord value, $Res Function(FaturaRecord) then) =
      _$FaturaRecordCopyWithImpl<$Res, FaturaRecord>;
  @useResult
  $Res call(
      {String firmaAdi,
      int faturaNo,
      String faturaAdi,
      DateTime tarih,
      int tutar});
}

/// @nodoc
class _$FaturaRecordCopyWithImpl<$Res, $Val extends FaturaRecord>
    implements $FaturaRecordCopyWith<$Res> {
  _$FaturaRecordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firmaAdi = null,
    Object? faturaNo = null,
    Object? faturaAdi = null,
    Object? tarih = null,
    Object? tutar = null,
  }) {
    return _then(_value.copyWith(
      firmaAdi: null == firmaAdi
          ? _value.firmaAdi
          : firmaAdi // ignore: cast_nullable_to_non_nullable
              as String,
      faturaNo: null == faturaNo
          ? _value.faturaNo
          : faturaNo // ignore: cast_nullable_to_non_nullable
              as int,
      faturaAdi: null == faturaAdi
          ? _value.faturaAdi
          : faturaAdi // ignore: cast_nullable_to_non_nullable
              as String,
      tarih: null == tarih
          ? _value.tarih
          : tarih // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutar: null == tutar
          ? _value.tutar
          : tutar // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaturaRecordImplCopyWith<$Res>
    implements $FaturaRecordCopyWith<$Res> {
  factory _$$FaturaRecordImplCopyWith(
          _$FaturaRecordImpl value, $Res Function(_$FaturaRecordImpl) then) =
      __$$FaturaRecordImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firmaAdi,
      int faturaNo,
      String faturaAdi,
      DateTime tarih,
      int tutar});
}

/// @nodoc
class __$$FaturaRecordImplCopyWithImpl<$Res>
    extends _$FaturaRecordCopyWithImpl<$Res, _$FaturaRecordImpl>
    implements _$$FaturaRecordImplCopyWith<$Res> {
  __$$FaturaRecordImplCopyWithImpl(
      _$FaturaRecordImpl _value, $Res Function(_$FaturaRecordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firmaAdi = null,
    Object? faturaNo = null,
    Object? faturaAdi = null,
    Object? tarih = null,
    Object? tutar = null,
  }) {
    return _then(_$FaturaRecordImpl(
      firmaAdi: null == firmaAdi
          ? _value.firmaAdi
          : firmaAdi // ignore: cast_nullable_to_non_nullable
              as String,
      faturaNo: null == faturaNo
          ? _value.faturaNo
          : faturaNo // ignore: cast_nullable_to_non_nullable
              as int,
      faturaAdi: null == faturaAdi
          ? _value.faturaAdi
          : faturaAdi // ignore: cast_nullable_to_non_nullable
              as String,
      tarih: null == tarih
          ? _value.tarih
          : tarih // ignore: cast_nullable_to_non_nullable
              as DateTime,
      tutar: null == tutar
          ? _value.tutar
          : tutar // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaturaRecordImpl implements _FaturaRecord {
  const _$FaturaRecordImpl(
      {required this.firmaAdi,
      required this.faturaNo,
      required this.faturaAdi,
      required this.tarih,
      required this.tutar});

  factory _$FaturaRecordImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaturaRecordImplFromJson(json);

  @override
  final String firmaAdi;
  @override
  final int faturaNo;
  @override
  final String faturaAdi;
  @override
  final DateTime tarih;
  @override
  final int tutar;

  @override
  String toString() {
    return 'FaturaRecord(firmaAdi: $firmaAdi, faturaNo: $faturaNo, faturaAdi: $faturaAdi, tarih: $tarih, tutar: $tutar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaturaRecordImpl &&
            (identical(other.firmaAdi, firmaAdi) ||
                other.firmaAdi == firmaAdi) &&
            (identical(other.faturaNo, faturaNo) ||
                other.faturaNo == faturaNo) &&
            (identical(other.faturaAdi, faturaAdi) ||
                other.faturaAdi == faturaAdi) &&
            (identical(other.tarih, tarih) || other.tarih == tarih) &&
            (identical(other.tutar, tutar) || other.tutar == tutar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, firmaAdi, faturaNo, faturaAdi, tarih, tutar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaturaRecordImplCopyWith<_$FaturaRecordImpl> get copyWith =>
      __$$FaturaRecordImplCopyWithImpl<_$FaturaRecordImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaturaRecordImplToJson(
      this,
    );
  }
}

abstract class _FaturaRecord implements FaturaRecord {
  const factory _FaturaRecord(
      {required final String firmaAdi,
      required final int faturaNo,
      required final String faturaAdi,
      required final DateTime tarih,
      required final int tutar}) = _$FaturaRecordImpl;

  factory _FaturaRecord.fromJson(Map<String, dynamic> json) =
      _$FaturaRecordImpl.fromJson;

  @override
  String get firmaAdi;
  @override
  int get faturaNo;
  @override
  String get faturaAdi;
  @override
  DateTime get tarih;
  @override
  int get tutar;
  @override
  @JsonKey(ignore: true)
  _$$FaturaRecordImplCopyWith<_$FaturaRecordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
