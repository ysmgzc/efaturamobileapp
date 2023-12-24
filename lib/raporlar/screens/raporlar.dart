import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/raporlar/screens/r_alis_satis_toplamlari.dart';
import 'package:efaturamobileapp/raporlar/screens/r_kdv_raporu.dart';
import 'package:efaturamobileapp/raporlar/screens/r_siparis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/screens/rapor_ozeti_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RaporlarScreen extends StatefulWidget {
  const RaporlarScreen({super.key});

  @override
  State<RaporlarScreen> createState() => _RaporlarScreenState();
}

class _RaporlarScreenState extends State<RaporlarScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Raporlar',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, top: 15),
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
            child: Container(
              color: Colors.white,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    CustomContainer(
                      screen: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Satış Özeti"),
                      title: "Satış Özeti",
                      iconPath: 'assets/icons/drawericon/satisicon.png',
                    ),
                    const Divider(),
                    CustomContainer(
                      screen: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Alış Özeti"),
                      title: "Alış Özeti",
                      iconPath: 'assets/icons/drawericon/alisicon.png',
                    ),
                    const Divider(),
                    CustomContainer(
                      screen: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Masraf Özeti"),
                      title: "Masraf Özeti",
                      iconPath: 'assets/icons/drawericon/masraficon.png',
                    ),
                    const Divider(),
                    const CustomContainer(
                      screen: RSiparisOzetiScreen(),
                      title: "Sipariş Özeti",
                      iconPath: 'assets/icons/drawericon/siparisicon.png',
                    ),
                    const Divider(),
                    const CustomContainer(
                      screen: RAlisSatisToplamlariScreen(),
                      title: "Alış / Satış Toplamları",
                      iconPath:
                          'assets/icons/drawericon/alissatistoplamrapor.png',
                    ),
                    const Divider(),
                    const CustomContainer(
                      screen: RKdvRaporuScreen(),
                      title: "KDV Raporu",
                      iconPath: 'assets/icons/drawericon/kdvraporicon.png',
                    ),
                    const Divider(),
                    /*    const CustomContainer(
                      screen: IadeRaporu(),
                      title: "İadeler",
                      iconPath: 'assets/icons/drawericon/iaderaporuicon.png',
                    ),*/
                    /* const  Divider(),
                   const CustomContainer(
                      screen: DepoStokRaporu(),
                      title: "Depo Stokları",
                      iconPath: 'assets/icons/drawericon/depostokraporicon.png',
                    ),
                   const Divider(),
                     const CustomContainer(
                      screen: StokHareketleriRaporu(),
                      title: "Stok Hareketleri",
                      iconPath: 'assets/icons/drawericon/stokhareketicon.png',
                    ),
                  const  Divider(),
                   const CustomContainer(
                      screen: HesapHareketleri(),
                      title: "Hesap Hareketleri",
                      iconPath: 'assets/icons/drawericon/hesaphareketraporicon.png',
                    ),*/
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final Widget screen;
  final String title;
  final String iconPath;

  const CustomContainer({
    Key? key,
    required this.screen,
    required this.title,
    required this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: MediaQuery.of(context).size.width * 3,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Get.to(screen);
            },
            child: ListTile(
              leading: Container(
                width: 40.0,
                height: 40.0,
                child: Image.asset(iconPath),
              ),
              title: Text(
                title,
                style: TextStyle(fontSize: 14.0),
              ),
              trailing: const Icon(Icons.navigate_next, size: 25.0),
            ),
          ),
        ],
      ),
    );
  }
}
