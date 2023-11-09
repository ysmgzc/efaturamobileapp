import 'package:efaturamobileapp/raporlar/r_siparis_ozeti/siparisozetidetayliarama.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../drawer_bar.dart';

class RSiparisOzetiScreen extends StatefulWidget {
  const RSiparisOzetiScreen({Key? key}) : super(key: key);

  @override
  State<RSiparisOzetiScreen> createState() => _RSiparisOzetiScreenState();
}

class _RSiparisOzetiScreenState extends State<RSiparisOzetiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Sipariş Özeti',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.filter_alt),
            onPressed: () {
              Get.to(const SiparisOzetiDetayliArama());
            },
          ),
          IconButton(
            icon: Image.asset('assets/icons/excelicon.png'),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: Container(),
    );
  }
}
