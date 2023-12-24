import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/raporlar/screens/zaman_birimi_form_screen.dart';
import 'package:efaturamobileapp/raporlar/components/alisozetidetayliarama.dart';
import 'package:efaturamobileapp/raporlar/components/masrafozetidetayliarama.dart';
import 'package:efaturamobileapp/raporlar/components/rapor_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../drawer_bar.dart';

class RaporOzetiScreen extends StatefulWidget {
  String raporOzetiScreenAppBar;

  RaporOzetiScreen({required this.raporOzetiScreenAppBar});

  @override
  State<RaporOzetiScreen> createState() => _RaporOzetiScreenState();
}

class _RaporOzetiScreenState extends State<RaporOzetiScreen> {
  int raporOzetDetayliArama = 0;

  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {
      //  if (widget.raporOzetiScreenAppBar=="Alış Özeti" ||widget.raporOzetiScreenAppBar=="Satış Özeti" ) {
      //    raporOzetDetayliArama = 1;
      //   }
      if (widget.raporOzetiScreenAppBar == "Masraf Özeti") {
        raporOzetDetayliArama = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
            title: Text(
              widget.raporOzetiScreenAppBar,
            ),
            actions: raporOzetDetayliArama == 0
                ? [
                    IconButton(
                      icon: const Icon(Icons.filter_alt),
                      onPressed: () {
                        Get.to(const AlisOzetiDetayliArama());
                      },
                    ),
                  ]
                : [
                    IconButton(
                      icon: const Icon(Icons.filter_alt),
                      onPressed: () {
                        Get.to(const MasrafOzetiDetayliArama());
                      },
                    ),
                  ]),
        body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
                child: CustomContainerWidget(
                    screenWidth: screenWidth,
                    screenHeight: screenHeight,
                    child: Container(
                      color: Colors.white,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Bugün',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Bugün",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Dün',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Dün",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Bu Hafta',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Bu Hafta",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Geçen Hafta',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Geçen Hafta",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Bu Ay',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Bu Ay",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Geçen Ay',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Geçen Ay",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Bu Yıl',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Bu Yıl",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                          const Divider(),
                          const SizedBox(height: 8),
                          RaporWidget(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            titleText: 'Geçen Yıl',
                            amountText: '₺0.00',
                            route: ZamanBirimiFormScreen(
                                appBarZamanBirimiBaslik: "Geçen Yıl",
                                appBarRaporBaslik:
                                    widget.raporOzetiScreenAppBar),
                          ),
                        ],
                      ),
                    )))));
  }
}
