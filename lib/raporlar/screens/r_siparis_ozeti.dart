import 'package:efaturamobileapp/raporlar/components/siparisozetidetayliarama.dart';
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
      appBar: AppBar(
        title: const Text(
          'Sipariş Özeti',
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
