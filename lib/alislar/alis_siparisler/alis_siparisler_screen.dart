import 'package:efaturamobileapp/alislar/alis_siparisler/secenekler/alissiparisdetayliarama.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../home_screen/home_page_screen.dart';

class AlisSiparislerScreen extends StatefulWidget {
  const AlisSiparislerScreen({super.key});

  @override
  State<AlisSiparislerScreen> createState() => _AlisSiparislerScreenState();
}

class _AlisSiparislerScreenState extends State<AlisSiparislerScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      //bottomNavigationBar:const BottomNavBar(selectedMenu: MenuState.home),
      appBar: AppBar(
        title: const Text(
          'Alış Siparişleri',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const AlisSiparisDetayliArama(),
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
                        optionIds: const [3, 4, 5, 6, 7, 8],
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
              optionIds: [3, 4, 5, 6, 7, 8],
              destinationWidget: AlisSiparisDetayliArama(),
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
                          appBarBaslik: 'Sipariş (KDV Hariç)'),
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
            route: FormScreenEkleAltin(
                appBarBaslik: 'Sipariş (KDV Hariç)',
                personImageBorderMetin: ""),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
