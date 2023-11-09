import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparisler_screen.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/home_screen/genel_bakis.dart';
import 'package:efaturamobileapp/giderler/giderler_screen.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/raporlar/raporlar.dart';
import 'package:efaturamobileapp/satislar/satis_siparis/satis_siparis_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_hareketleri.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "E-Fatura",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const GenelBakisScreen(),
                    asset: 'assets/images/grafikk.png',
                    text: "Genel Durum",
                  ),
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const SatisSiparislerScreen(),
                    asset: 'assets/images/satislar.png',
                    text: "Satışlar",
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const AlisSiparislerScreen(),
                    asset: 'assets/images/alislar1.png',
                    text: "Alışlar",
                  ),
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const GiderlerScreen(),
                    asset: 'assets/images/masraflar.png',
                    text: "Giderler",
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const StokHareketleriScreen(),
                    asset: 'assets/images/stoklar.png',
                    text: "Stok Hareketleri",
                  ),
                  HomePageWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    route: const RaporlarScreen(),
                    asset: 'assets/images/raporlar.png',
                    text: "Raporlar",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      //bottomNavigationBar: BottomNavBar(),
    );
  }
}

class HomePageWidget extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final Widget route;
  final String asset;
  final String text;

  const HomePageWidget(
      {Key? key,
      required this.screenWidth,
      required this.screenHeight,
      required this.route,
      required this.asset,
      required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(route);
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            width: screenWidth * 0.3,
            height: screenHeight * 0.2,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.grey, width: 0.25),
            ),
            child: Image.asset(asset),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(text,
              style: const TextStyle(
                color: kTextColor2,
                fontSize: 14,
              )),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}
