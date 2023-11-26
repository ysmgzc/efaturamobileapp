import 'package:efaturamobileapp/screens/login_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urun_hizmet_sec_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'home_screen/home_page_screen.dart';

void main() {
  //statusbarı transparan yapar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        primarySwatch: Colors.blue,
        // appBarTheme: AppBarTheme(color: Colors.blue),
      ),
      home: const HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //TekstilHammaddeEkle
 //LoginScreen