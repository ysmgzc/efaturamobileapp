
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/bu_ay.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/bu_hafta.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/bu_yil.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/bugun.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/dun.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/gecen_ay.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/gecen_hafta.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/ZamanBirimi/gecen_yil.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/satisozetidetayliarama.dart';
import 'package:efaturamobileapp/raporlar/rapor_widget.dart';
import 'package:flutter/material.dart';

import '../../drawer_bar.dart';

class RSatisOzetiScreen extends StatefulWidget {
  const RSatisOzetiScreen({Key? key}) : super(key: key);

  @override
  State<RSatisOzetiScreen> createState() => _RSatisOzetiScreenState();

}

class _RSatisOzetiScreenState extends State<RSatisOzetiScreen> {
 
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
          'Satış Özeti',
          style: TextStyle(color: Colors.black),
        ),
         actions: [
    IconButton(
      icon:const Icon(Icons.filter_alt),
      onPressed: () {
         Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const SatisOzetiDetayliArama()),
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
              route:const SatisBugunScreen(),
            ),
            const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Dün',
              amountText: '₺0.00',
              route:const SatisDunScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Hafta',
              amountText: '₺0.00',
              route:const SatisBuHaftaScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Hafta',
              amountText: '₺0.00',
              route:const SatisGecenHaftaScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Ay',
              amountText: '₺0.00',
              route:const SatisBuAyScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Ay',
              amountText: '₺0.00',
              route:const SatisGecenAyScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Bu Yıl',
              amountText: '₺0.00',
              route:const SatisBuYilScreen(),
            ),
             const Divider(),
            const SizedBox(height: 8),
            RaporWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              titleText: 'Geçen Yıl',
              amountText: '₺0.00',
              route:const SatisGecenYilScreen(),
            ),

          ],
          ),
        ),
        )
      ),
    );
  }
}
