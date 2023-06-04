
import 'package:efaturamobileapp/alislar/alis_faturasi/alis_faturasi_save.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/secenekler/satisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_cikisi.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_girisi.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../bottom_show_dialog_widget.dart';

enum ExceleAktar { standart, luca, detayli }

class TekstilHammaddeScreen extends StatefulWidget {
  const TekstilHammaddeScreen({super.key});

  @override
  State<TekstilHammaddeScreen> createState() => _TekstilHammaddeScreenState();
}

class _TekstilHammaddeScreenState extends State<TekstilHammaddeScreen> {
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
          'Tekstil Hammadde',
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
                  icon: Image.asset(
                    'assets/icons/excelicon.png',
                    width: 20,
                    height: 20,
                  ),
                  text: "Excel'e Aktar",
                  onTap: () {}
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
                      durumu: 'Satınalma Faturası',
                      odemeVadesi:"1 Kilogram x ₺25" ,
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: AlisFaturasiSave(),
                    ),
                    Divider(),
                    ContainerWidget(
                      tedarikciAdi: 'Test Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Satınalma Faturası',
                      odemeVadesi:"1 Kilogram x ₺25" ,
                      tarih: '24 Nisan',
                      paraBirimi: '₺1000',
                      page: AlisFaturasiSave(),
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
            label: 'Stok Çıkışı',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StokCikisiEkle(),
                ),
              );
            },
          ),
          SpeedDialChild(
            child: const Icon(Icons.add),
            label: 'Stok Girişi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const StokGirisiEkle(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
