import 'package:efaturamobileapp/alislar/alis_faturasi/alis_faturasi_save.dart';
import 'package:efaturamobileapp/alislar/alis_faturasi/model/alis_fatura_record.dart';
import 'package:get/get.dart';

class Controller extends GetxController {
  var faturaRecord = <FaturaRecord>[
    FaturaRecord(
      firmaAdi: 'Deneme Satış Ltd. Şti.',
      faturaNo: 000000000000001,
      faturaAdi: 'Satınalma Faturası',
      tarih: DateTime.now(),
      tutar: 1000,
    ),
    FaturaRecord(
      firmaAdi: 'Deneme Satış Ltd. Şti.',
      faturaNo: 000000000000001,
      faturaAdi: 'Satınalma İade Faturası',
      tarih: DateTime.now(),
      tutar: 1000,
    )
  ].obs;

  //ekle butonunun işlevi
  void addFaturaRecord() {
    FaturaRecord(
      firmaAdi: 'Deneme Satış Ltd. Şti.',
      faturaNo: 000000000000001,
      faturaAdi: 'Satınalma İade Faturası',
      tarih: DateTime.now(),
      tutar: 1500,
    );
  }
}
