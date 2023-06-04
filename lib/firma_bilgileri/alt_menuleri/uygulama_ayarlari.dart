
import 'package:flutter/material.dart';

class UygulamaAyarlariScreen extends StatefulWidget {
  const UygulamaAyarlariScreen({Key? key}) : super(key: key);

  @override
  State<UygulamaAyarlariScreen> createState() => _UygulamaAyarlariScreenState();
}

class _UygulamaAyarlariScreenState extends State<UygulamaAyarlariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Uygulama Ayarları', style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
    
    );
  }
}
