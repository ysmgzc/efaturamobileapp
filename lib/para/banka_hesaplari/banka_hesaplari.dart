import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/banka_hesaplari/banka_hesaplari_ekle.dart';
import 'package:flutter/material.dart';

class BankaHesaplariScreen extends StatefulWidget {
  const BankaHesaplariScreen({Key? key}) : super(key: key);

  @override
  State<BankaHesaplariScreen> createState() => _BankaHesaplariScreenState();
}

class _BankaHesaplariScreenState extends State<BankaHesaplariScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Bankalar',style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
  backgroundColor: kButtonColor,
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const BankaHesabiEkle(),
      ),
    );
  }, 
  shape: const StadiumBorder(side: BorderSide(color: kButtonColor, width: 3)),
  child:const Icon(Icons.add),
 
),
    );
  }
}
