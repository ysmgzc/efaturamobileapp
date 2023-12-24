import 'package:efaturamobileapp/bottom_app_bar_widget_toplam.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/giderler/hizmet_masraf_ekle.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/giderler/hizmet_masraf_save.dart';
import 'package:efaturamobileapp/giderler/secenekler/giderlerdetayliarama.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../bottom_show_dialog_widget.dart';
import '../float_action_buton_widget.dart';
import '../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class GiderlerScreen extends StatefulWidget {
  const GiderlerScreen({Key? key}) : super(key: key);

  @override
  State<GiderlerScreen> createState() => _GiderlerScreenState();
}

class _GiderlerScreenState extends State<GiderlerScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Giderler',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const GiderlerDetayliArama(),
              ),
              SheetOption(
                icon: const Icon(Icons.find_in_page, color: Colors.black),
                text: 'Muhasebe Notu',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
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
              SheetOption(
                icon: const Icon(Icons.attachment, color: Colors.black),
                text: "Ek'leri İndir",
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
              ),
              SheetOption(
                icon: const Icon(Icons.delete, color: Colors.black),
                text: 'Sil',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
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
              destinationWidget: GiderlerDetayliArama(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: const Column(
                  children: [
                    ContainerWidget(
                      tedarikciAdi: 'Personel Ahmet Usta',
                      tedarikciNo: '000001',
                      odemeVadesi: 'Ödeme Vadesi: 31 MAYIS',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      durumuSag: 'Ödenecek',
                      page: HizmetMasrafSave(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: CustomFAB(
        isSpeedDial: false,
        childrenData: [
          SpeedDialData(
            label: '',
            route: const HizmetMasrafEkle(),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
