import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat%20_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_girisi_ekle.dart';
import 'package:flutter/material.dart';
import '../../../search_field.dart';

class TahsilatScreen extends StatefulWidget {
  TahsilatScreen();

  @override
  State<TahsilatScreen> createState() => _UrunHizmetSecAltinScreenState();
}

class _UrunHizmetSecAltinScreenState extends State<TahsilatScreen> {
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Tahsilat Seç',
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
                        "Tahsilat Listesi",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    Column(
                      children: [
                        ContainerWidget(
                          iconKareBox: true,
                          ustTarih: "26 KASIM",
                          tedarikciAdi: 'XAU',
                          tedarikciAdiStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          durumu: '000001 nolu...',
                          paraBirimi: '50,00 XAU',
                          paraBirimiStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          page: TahsilatEkleAltin(),
                        ),
                        const Divider(
                          thickness: 1,
                        ),
                        ContainerWidget(
                          iconKareBox: true,
                          ustTarih: "26 KASIM",
                          tedarikciAdi: 'XAU',
                          tedarikciAdiStyle: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                          durumu: '000001 nolu...',
                          paraBirimi: '50,00 XAU',
                          paraBirimiStyle: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                          page: TahsilatEkleAltin(),
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
        child: CustomFAB(
          isSpeedDial: true,
          childrenData: [
            SpeedDialData(
              label: 'Çek Girişi',
              route: const CekGirisiEkle(),
            ),
            SpeedDialData(
              label: 'Yeni Tahsilat',
              route: TahsilatEkleAltin(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
