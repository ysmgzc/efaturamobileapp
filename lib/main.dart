import 'package:efaturamobileapp/constants.dart';
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
        appBarTheme: AppBarTheme(
          titleTextStyle: TextStyle(
            color: color3,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
          backgroundColor: color4,
          iconTheme: IconThemeData(color: color6),
          actionsIconTheme: IconThemeData(color: color6),
          centerTitle: false,
        ),
      ),
      home: const HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //TekstilHammaddeEkle
 //LoginScreen