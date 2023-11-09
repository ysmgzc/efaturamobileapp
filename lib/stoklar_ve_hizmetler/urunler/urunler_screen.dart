import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/secenekler/urunlerdetayliarama.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammade_stok_hareketleri.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/tekstil_urunleri/tekstil_urunleri_stok_hareketleri.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../search_field.dart';
import '../../show_dialog_ekle.dart';
import '../../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class UrunlerScreen extends StatefulWidget {
  const UrunlerScreen({super.key});

  @override
  State<UrunlerScreen> createState() => _UrunlerScreenState();
}

class _UrunlerScreenState extends State<UrunlerScreen> {
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
          'Ürünler',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const UrunlerDetayliArama(),
              ),
              SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  List<DialogOption> dialogOptions = [
                    DialogOption(
                      title: 'Ada göre (A-Z)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Ada göre (Z-A)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En yeni)',
                      onPressed: () {},
                    ),
                    DialogOption(
                      title: 'Tarihe göre (En eski)',
                      onPressed: () {},
                    ),
                  ];
                  ShowDialogEkle.showCustomDialog(
                      context, dialogOptions, 'Sıralama');
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
              const SearchField(
                  suffixIcon: 'assets/icons/barcodescannericon.png'),
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
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      UrunlerHizmetlerWidget(
                        baslikText: "Tekstil Hammadde",
                        kdvsizText: "100 Kilogram",
                        kdvsizTextYuzde: "%18",
                        kdvsizAlisText: "₺25,00",
                        alisText: "(KDV'siz)",
                        kdvsizSatisText: "₺100,00",
                        satisText: "(KDV'siz)",
                        onTap: () {
                          List<DialogOption> dialogOptions = [
                            DialogOption(
                              title: 'Düzenle',
                              onPressed: () {},
                            ),
                            DialogOption(
                              title: 'Stok Hareketleri',
                              onPressed: () {
                                Get.to(const TekstilHammaddeScreen());
                              },
                            ),
                          ];
                          ShowDialogEkle.showCustomDialog(
                              context, dialogOptions, 'Sıralama');
                        },
                      ),
                      const Divider(),
                      UrunlerHizmetlerWidget(
                        baslikText: "Tekstil Ürünleri",
                        kdvsizText: "-100 Kilogram",
                        kdvsizTextYuzde: "%10",
                        kdvsizAlisText: "₺25,00",
                        alisText: "(KDV'siz)",
                        kdvsizSatisText: "₺100,00",
                        satisText: "(KDV'siz)",
                        onTap: () {
                          List<DialogOption> dialogOptions = [
                            DialogOption(
                              title: 'Düzenle',
                              onPressed: () {},
                            ),
                            DialogOption(
                              title: 'Stok Hareketleri',
                              onPressed: () {
                                Get.to(const TekstilUrunleriScreen());
                              },
                            ),
                          ];
                          ShowDialogEkle.showCustomDialog(
                              context, dialogOptions, 'Sıralama');
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const UrunEkle(),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

/*class UrunlerHizmetlerWidget extends StatelessWidget {
  final String kdvsizAlisText;
  final String kdvsizSatisText;
  final String baslikText;
  final String kdvsizText;
  final String kdvsizTextYuzde;
  final String alisText;
  final String satisText;
  final VoidCallback onTap;

  const UrunlerHizmetlerWidget({
    Key? key,
    required this.kdvsizAlisText,
    required this.kdvsizSatisText,
    required this.baslikText,
    required this.kdvsizText,
    required this.kdvsizTextYuzde,
    required this.alisText,
    required this.satisText,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(
            height: 20,
          ),
          Text(
            baslikText,
            style:const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        const  SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "STOK / KDV",
                    style: TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.blue,
                    width: 20.0,
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvsizText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    kdvsizTextYuzde,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "ALIŞ",
                    style: TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.red,
                    width: 20.0,
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvsizAlisText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    alisText,
                    style:const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    "SATIŞ",
                    style: TextStyle(
                      color: yTextColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 2.0,
                    color: Colors.green,
                    width: 20.0,
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvsizSatisText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    satisText,
                    style:const TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        const  SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}*/
