import 'package:efaturamobileapp/alislar/alis_faturasi/secenekler/alisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/kasa_ekle.dart';
import 'package:efaturamobileapp/para/kasalar/screens/secilen_kasa_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KasalarScreen extends StatefulWidget {
  const KasalarScreen({super.key});

  @override
  State<KasalarScreen> createState() => _KasalarScreenState();
}

class _KasalarScreenState extends State<KasalarScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Kasalar',
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: Column(
                  children: [
                    KasalarWidget(
                      kasaTuru: "TL KASASI",
                      kasaAdi: "Merkez Kasa",
                      paraBirimi: "₺ 0,00",
                      route: KasaScreen(appBarBaslik: "TL Kasası"),
                    ),
                    Divider(),
                    KasalarWidget(
                      kasaTuru: "EUR KASASI",
                      kasaAdi: "Merkez Kasa",
                      guncelKur: "Güncel Kur: ₺0,14",
                      paraBirimi: "€ 0,00",
                      route: KasaScreen(appBarBaslik: "EUR Kasası"),
                    ),
                    Divider(),
                    KasalarWidget(
                      kasaTuru: "USD KASASI",
                      kasaAdi: "Merkez Kasa",
                      guncelKur: "Güncel Kur: ₺0,14",
                      paraBirimi: "\$ 0,00",
                      route: KasaScreen(appBarBaslik: "USD Kasası"),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: '',
              route: const KasaEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class KasalarWidget extends StatelessWidget {
  final String kasaTuru;
  final String? kasaAdi;
  final String? guncelKur;
  final String paraBirimi;
  final Widget route;

  const KasalarWidget({
    Key? key,
    required this.kasaTuru,
    this.kasaAdi,
    this.guncelKur,
    required this.paraBirimi,
    required this.route,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(route);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(kasaTuru,
                    style: const TextStyle(color: color2, fontSize: 14)),
                Text(kasaAdi ?? "",
                    style: const TextStyle(color: Colors.black, fontSize: 14)),
                if (guncelKur != null)
                  Text(guncelKur!,
                      style:
                          const TextStyle(color: Colors.black, fontSize: 13)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(paraBirimi,
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
