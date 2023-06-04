
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/bu_ay.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/bu_hafta.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/bu_yil.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/bugun.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/dun.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/gecen_ay.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/gecen_hafta.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/ZamanBirimi/gecen_yil.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/masrafozetidetayliarama.dart';
import 'package:efaturamobileapp/raporlar/rapor_widget.dart';
import 'package:flutter/material.dart';

import '../../drawer_bar.dart';

class RMasrafOzetiScreen extends StatefulWidget {
  const RMasrafOzetiScreen({Key? key}) : super(key: key);

  @override
  State<RMasrafOzetiScreen> createState() => _RMasrafOzetiScreenState();

}

class _RMasrafOzetiScreenState extends State<RMasrafOzetiScreen> {
 
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
       drawer: const DrawerBar(),
     appBar: AppBar(
      iconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,

        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Masraf Özeti',
          style: TextStyle(color: Colors.black),
        ),
         actions: [
    IconButton(
      icon:const Icon(Icons.filter_alt),
      onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const MasrafOzetiDetayliArama()),
        );
      },
    ),
  ],
      ),

      body: SingleChildScrollView(
        child: Container(color: Colors.transparent,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.02,
            vertical: screenHeight * 0.02,
            
          ),
        child: Container(color: Colors.white,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bugün',
              amountText: '₺0.00',
              route:const MasrafBugunScreen(),
            ),
            const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Dün',
              amountText: '₺0.00',
              route:const MasrafDunScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Hafta',
              amountText: '₺0.00',
              route:const MasrafBuHaftaScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Hafta',
              amountText: '₺0.00',
              route:const MasrafGecenHaftaScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Ay',
              amountText: '₺0.00',
              route:const MasrafBuAyScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Ay',
              amountText: '₺0.00',
              route:const MasrafGecenAyScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Yıl',
              amountText: '₺0.00',
              route:const MasrafBuYilScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Yıl',
              amountText: '₺0.00',
              route:const MasrafGecenYilScreen(),
            ),

          ],
          ),
        ),
        )
      ),
    );
  }
}
