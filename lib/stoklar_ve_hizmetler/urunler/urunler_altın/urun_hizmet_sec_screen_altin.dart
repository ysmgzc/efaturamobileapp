import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/urun_ekle_altin_girisi.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmet_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammadde.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import 'package:flutter/material.dart';
import '../../../search_field.dart';

class UrunHizmetSecAltinScreen extends StatefulWidget {
  String appBarBaslik;
  UrunHizmetSecAltinScreen({
    required this.appBarBaslik,
  });

  @override
  State<UrunHizmetSecAltinScreen> createState() =>
      _UrunHizmetSecAltinScreenState();
}

class _UrunHizmetSecAltinScreenState extends State<UrunHizmetSecAltinScreen> {
  int menu = 0;
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {
      if ([
        'Altın Girişi',
        'Altın Çıkışı',
        'Altın Alışı',
        'Altın Satışı',
        'Bedelli Altın Girişi',
        'Bedelli Altın Çıkışı',
        'Gelen İade',
        'Çıkan İade',
        'İşçilik Girişi',
        'İşçilik Çıkışı',
      ].contains(widget.appBarBaslik)) {
        menu = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color4,
        title: const Text(
          'Ürün/Hizmet seç',
        ),
        actions: [
          CircleIconAltin(
            iconData: Icons.done,
            iconColor: color8,
            color: color6,
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: color4,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.05,
                vertical: screenHeight * 0.01,
              ),
              color: color4,
              child: Column(
                children: [
                  SizedBox(
                    height: screenHeight * 0.01,
                  ),
                  const SearchField(),
                  SizedBox(
                    height: screenHeight * 0.03,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: Container(
                width: screenWidth,
                height: screenHeight,
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.03,
                  vertical: screenHeight * 0.01,
                ),
                decoration: BoxDecoration(
                  color: color8,
                  border: Border.all(
                    color: color6,
                    width: 1.0,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0, left: 8, bottom: 8),
                      child: Text(
                        "Listelenen Ürünler",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        menu == 1
                            ? const ContainerWidget(
                                iconKareBox: true,
                                tedarikciAdi: 'S-00000001',
                                tedarikciAdiStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                showInfo: true,
                                tedarikciNo: 'Bilezik',
                                tedarikciNoStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                durumu: '22K',
                                altinMetin: "Miktar:",
                                paraBirimi: '91,600 GR',
                                paraBirimiStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                page: UrunEkleAltinGirisi(),
                              )
                            : const ContainerWidget(
                                iconKareBox: true,
                                tedarikciAdi: 'Tekstil Hammadde',
                                tedarikciAdiStyle:
                                    TextStyle(color: Colors.grey, fontSize: 14),
                                tedarikciNo: 'KDV(%18)',
                                tedarikciNoStyle: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                                durumu: 'Satış',
                                altinMetin: "Miktar:",
                                paraBirimi: '91,600 TL',
                                paraBirimiStyle: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                                page: TekstilHammaddeEkle(),
                              ),
                        const Divider(
                          thickness: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: menu == 1
            ? CustomFAB(
                isSpeedDial: false,
                childrenData: [
                  SpeedDialData(
                    label: '',
                    route: TekstilHammaddeEkle(),
                  ),
                ],
              )
            : CustomFAB(
                isSpeedDial: true,
                childrenData: [
                  SpeedDialData(
                    label: 'Hizmet Ekle',
                    route: const HizmetEkle(),
                  ),
                  SpeedDialData(
                    label: 'Ürün Ekle',
                    route: const UrunEkle(),
                  ),
                ],
              ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
