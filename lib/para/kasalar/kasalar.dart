import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/eur_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tl_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/usd_kasa.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../bottom_app_bar_widget_toplam.dart';
import 'kasa_ekle.dart';

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
      drawer: const DrawerBar(),
      appBar: AppBar(
        //elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Kasalar',
          style: TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
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
                child: const Column(
                  children: [
                    KasalarWidget(
                      kasaTuru: "TL KASASI",
                      kasaAdi: "Merkez Kasa",
                      paraBirimi: "₺ 0,00",
                      route: TLKasaScreen(),
                    ),
                    Divider(),
                    KasalarWidget(
                      kasaTuru: "EUR KASASI",
                      kasaAdi: "Merkez Kasa",
                      guncelKur: "Güncel Kur: ₺0,14",
                      paraBirimi: "€ 0,00",
                      route: EURKasaScreen(),
                    ),
                    Divider(),
                    KasalarWidget(
                      kasaTuru: "USD KASASI",
                      kasaAdi: "Merkez Kasa",
                      guncelKur: "Güncel Kur: ₺0,14",
                      paraBirimi: "\$ 0,00",
                      route: USDKasaScreen(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBarToplam(
        firstText: "KASA TOPLAMI",
        secondText: "₺1000",
      ),
      floatingActionButton: CustomFAB(
        isSpeedDial: false,
        childrenData: [
          SpeedDialData(
            label: '',
            route: const KasaEkle(),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class KasalarWidget extends StatelessWidget {
  final String kasaTuru;
  final String kasaAdi;
  final String? guncelKur;
  final String paraBirimi;
  final Widget route;

  const KasalarWidget({
    Key? key,
    required this.kasaTuru,
    required this.kasaAdi,
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
                    style: const TextStyle(color: Colors.red, fontSize: 14)),
                Text(kasaAdi,
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
