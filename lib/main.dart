import 'package:flutter/material.dart';

import 'home_screen/home_page_screen.dart';
import 'stoklar_ve_hizmetler/urunler/tekstil_hammadde/tekstil_hammadde.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //TekstilHammaddeEkle