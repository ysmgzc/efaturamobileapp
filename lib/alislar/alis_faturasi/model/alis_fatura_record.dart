import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'alis_fatura_record.freezed.dart';
part 'alis_fatura_record.g.dart';

@freezed
class FaturaRecord with _$FaturaRecord {
  const factory FaturaRecord({
    required String firmaAdi,
    required int faturaNo,
    required String faturaAdi,
    required DateTime tarih,
    required int tutar,
  }) = _FaturaRecord;

  factory FaturaRecord.fromJson(Map<String, dynamic> json) =>
      _$FaturaRecordFromJson(json);
}
