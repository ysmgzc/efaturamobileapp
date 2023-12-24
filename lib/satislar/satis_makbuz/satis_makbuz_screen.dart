import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/screens/form_screen_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/secenekler/satismakbuzdetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../container_widget.dart';
import '../../float_action_buton_widget.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class SatisMakbuzScreen extends StatefulWidget {
  const SatisMakbuzScreen({super.key});

  @override
  State<SatisMakbuzScreen> createState() => _SatisMakbuzScreenState();
}

class _SatisMakbuzScreenState extends State<SatisMakbuzScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        title: const Text(
          'Verilen Serbest Meslek Makbuzu',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const SatisMakbuzDetayliArama(),
              ),
              SheetOption(
                icon: const Icon(Icons.send, color: Colors.black),
                text: 'Gönder',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
              ),
              SheetOption(
                icon: const Icon(Icons.print, color: Colors.black),
                text: 'Yazdır',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
              ),
              SheetOption(
                icon: const Icon(Icons.download, color: Colors.black),
                text: 'UBL İndir',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SiralamaIslemi(
                        onSort: (sortedItems) {},
                        optionIds: [1, 2, 3, 4],
                      );
                    },
                  );
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
              optionIds: [1, 2, 3, 4],
              destinationWidget: SatisMakbuzDetayliArama(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: Column(
                  children: [
                    ContainerWidget(
                      tedarikciAdi: 'Personel Ahmet Usta',
                      tedarikciNo: '0000000000001',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: FormScreenSaveAltin(
                          appBarBaslik: 'Serbest Meslek Makbuzu'),
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
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: FormScreenEkleAltin(
                  appBarBaslik: 'Serbest Meslek Makbuzu',
                  personImageBorderMetin: ''),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
