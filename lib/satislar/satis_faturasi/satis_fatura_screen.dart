
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_perakende_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_perakende_faturasi_save.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_toptan_ekle.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_toptan_faturasi_save.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/secenekler/satisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../bottom_show_dialog_widget.dart';
import '../../home_screen/home_page_screen.dart';
import '../../show_dialog_ekle.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

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
                  eventBus.fire(ContainerSelectedEvent(true));
                },
              ),

              SheetOption(
                icon: const Icon(Icons.print, color: Colors.black),
                text: 'Yazdır',
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
                      title: 'Tarihe göre (En yeni)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En eski)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En yüksek)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tutara göre (En düşük)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (A-Z)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Gönderen unvanı (Z-A)',
                      onPressed: () {},
                    ),
                  ];
                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                },
              ),
              SheetOption(
                icon: const Icon(Icons.find_in_page, color: Colors.black),
                text: 'Muhasebe Notu',
                page: const YeniRaporEkle(),
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
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.add_event,
        backgroundColor: kButtonColor,
        overlayColor: kButtonColor,
        overlayOpacity: 0.4,
        spaceBetweenChildren: 12,
        spacing: 12,
        children: [
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Toptan Satış (KDV Hariç)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisToptanEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Perakende Satış (KDV Dahil)',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const SatisPerakendeEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
