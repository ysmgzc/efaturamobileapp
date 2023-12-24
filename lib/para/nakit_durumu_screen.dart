import 'package:efaturamobileapp/bottom_app_bar_widget_toplam.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/para/kasalar/screens/kasalar_screen.dart';
import 'package:efaturamobileapp/para/kasalar/screens/secilen_kasa_screen.dart';
import 'package:efaturamobileapp/para_widget.dart';
import 'package:flutter/material.dart';

class NakitDurumuScreen extends StatefulWidget {
  const NakitDurumuScreen({super.key});

  @override
  State<NakitDurumuScreen> createState() => _NakitDurumuScreenState();
}

class _NakitDurumuScreenState extends State<NakitDurumuScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Nakit Durumu',
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
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
                      paraBirimi: "₺ 0,00",
                      route: KasaScreen(appBarBaslik: "TL Kasası"),
                    ),
                    Divider(
                      height: 0,
                    ),
                    KasalarWidget(
                      kasaTuru: "EUR KASASI",
                      paraBirimi: "€ 0,00",
                      route: KasaScreen(appBarBaslik: "EUR Kasası"),
                    ),
                    Divider(
                      height: 0,
                    ),
                    KasalarWidget(
                      kasaTuru: "USD KASASI",
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
      bottomNavigationBar: const CustomBottomAppBarToplam(
        firstText: "TOPLAM NAKİT",
        secondText: "₺1000",
      ),
    );
  }
}
