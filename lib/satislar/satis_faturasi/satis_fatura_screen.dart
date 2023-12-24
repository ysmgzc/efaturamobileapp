import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/screens/form_screen_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/secenekler/satisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bottom_app_bar_widget_toplam.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../float_action_buton_widget.dart';
import '../../home_screen/home_page_screen.dart';

enum ExceleAktar { standart, luca, detayli }

class SatisFaturalarScreen extends StatefulWidget {
  const SatisFaturalarScreen({super.key});

  @override
  State<SatisFaturalarScreen> createState() => _SatisFaturalarScreenState();
}

class _SatisFaturalarScreenState extends State<SatisFaturalarScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Satış Faturaları',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const SatisFaturasiDetayliArama(),
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
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SiralamaIslemi(
                        onSort: (sortedItems) {},
                        optionIds: const [1, 2, 3, 4, 5, 6, 7, 8],
                      );
                    },
                  );
                },
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
                  onTap: () {}),
              SheetOption(
                icon: const Icon(Icons.delete, color: Colors.black),
                text: 'Çıkış',
                page: const HomePageScreen(),
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
              optionIds: [1, 2, 3, 4, 5, 6, 7, 8],
              destinationWidget: SatisFaturasiDetayliArama(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: Column(
                  children: [
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Perakende Satış Faturası',
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
      floatingActionButton: CustomFAB(
        isSpeedDial: true,
        childrenData: [
          SpeedDialData(
            label: 'Toptan Satış\n(KDV Hariç)',
            route: FormScreenEkleAltin(
                appBarBaslik: 'Toptan Satış (KDV Hariç)',
                personImageBorderMetin: ""),
          ),
          SpeedDialData(
            label: 'Perakende Satış\n(KDV Dahil)',
            route: FormScreenEkleAltin(
                appBarBaslik: 'Perakende Satış (KDV Dahil)',
                personImageBorderMetin: ""),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
