
import 'package:efaturamobileapp/home_screen/home_page_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      home:  HomePageScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
 //SplashScreens