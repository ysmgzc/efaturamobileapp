import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/secenekler/stokhareketleridetayliarama.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_cikisi.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_girisi.dart';
import 'package:flutter/material.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class StokHareketleriScreen extends StatefulWidget {
  const StokHareketleriScreen({Key? key}) : super(key: key);

  @override
  State<StokHareketleriScreen> createState() => _StokHareketleriScreenState();
}

class _StokHareketleriScreenState extends State<StokHareketleriScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Stok Hareketleri',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const StokHareketleriDetayliArama(),
              ),
              SheetOption(
                icon: Image.asset(
                  'assets/icons/excelicon.png',
                  width: 20,
                  height: 20,
                ),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                child: const SearchField(text: "Buraya yazın...")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomRowWidget(
              optionIds: [3, 4, 5, 6, 7, 8],
              destinationWidget: StokHareketleriDetayliArama(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: Column(
                  children: [
                    ContainerWidget(
                      tedarikciAdi: 'Perakende Satış Faturası',
                      tedarikciNo: '0000000000001',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: FormScreenSaveAltin(
                          appBarBaslik: 'Perakende Satış Faturası (KDV Dahil)'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: true,
          childrenData: [
            SpeedDialData(
              label: 'Stok Çıkışı',
              route: const StokCikisiEkle(),
            ),
            SpeedDialData(
              label: 'Stok Girişi',
              route: const StokGirisiEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
