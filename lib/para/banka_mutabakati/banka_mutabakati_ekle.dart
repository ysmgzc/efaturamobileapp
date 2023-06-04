import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:flutter/material.dart';

class BankaMutabakatiEkle extends StatefulWidget {
  const BankaMutabakatiEkle({Key? key}) : super(key: key);

  @override
  State<BankaMutabakatiEkle> createState() => _BankaMutabakatiEkleState();
}

class _BankaMutabakatiEkleState extends State<BankaMutabakatiEkle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        centerTitle: true,
        title: const Text(
          'Banka Mutabakatı Ekle',
        ),
        automaticallyImplyLeading: false, 
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
