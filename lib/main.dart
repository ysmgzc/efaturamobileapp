import 'package:efaturamobileapp/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen/home_page_screen.dart';
import 'satislar/satis_faturasi/satis_fatura_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //TekstilHammaddeEkle