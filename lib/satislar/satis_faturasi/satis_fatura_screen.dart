
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_perakende_faturasi_save.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/form_screen_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_toptan_faturasi_save.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/secenekler/satisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';
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
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Satış Faturaları',
          style: TextStyle(color: Colors.black),
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
                      onSort: (sortedItems) {
                      },
                      optionIds:const [1, 2, 3, 4, 5, 6, 7, 8],
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
                  onTap: () {}
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
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const SearchField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child:const Column(
                  children:  [
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Perakende Satış Faturası',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: SatisPerakendeFaturasiSave(),
                    ),
                    Divider(),
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Toptan Satış Faturası',
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: SatisToptanFaturasiSave(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
        bottomNavigationBar: CustomBottomAppBarToplam(
  firstText: "TOPLAM",
  secondText: "₺1000",
),
     floatingActionButton: CustomFAB(
    isSpeedDial: true,
    childrenData: [
      SpeedDialData(
        label: 'Toptan Satış\n(KDV Hariç)',
        route: FormScreenEkle(appBarBaslik: 'Toptan Satış (KDV Hariç)',personImageBorderMetin: ""),
      ),
      SpeedDialData(
        label: 'Perakende Satış\n(KDV Dahil)',
        route:  FormScreenEkle(appBarBaslik: 'Perakende Satış (KDV Dahil)',personImageBorderMetin: ""),
      ),
    ],
  ),
   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
