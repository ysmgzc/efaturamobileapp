// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alis_fatura_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FaturaRecordImpl _$$FaturaRecordImplFromJson(Map<String, dynamic> json) =>
    _$FaturaRecordImpl(
      firmaAdi: json['firmaAdi'] as String,
      faturaNo: json['faturaNo'] as int,
      faturaAdi: json['faturaAdi'] as String,
      tarih: DateTime.parse(json['tarih'] as String),
      tutar: json['tutar'] as int,
    );

Map<String, dynamic> _$$FaturaRecordImplToJson(_$FaturaRecordImpl instance) =>
    <String, dynamic>{
      'firmaAdi': instance.firmaAdi,
      'faturaNo': instance.faturaNo,
      'faturaAdi': instance.faturaAdi,
      'tarih': instance.tarih.toIso8601String(),
      'tutar': instance.tutar,
    };
