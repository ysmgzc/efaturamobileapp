import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/hesaplar/banka_eur_hesabi.dart';
import 'package:efaturamobileapp/hesaplar/banka_tl_hesabi.dart';
import 'package:efaturamobileapp/hesaplar/banka_usd_hesabi.dart';
import 'package:efaturamobileapp/hesaplar/tl_kasa_hesaplari.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'kredi_kartlarim.dart';
import 'pos_hesabi_screen.dart';

class HesaplarScreen extends StatefulWidget {
  const HesaplarScreen({super.key});

  @override
  State<HesaplarScreen> createState() => _HesaplarScreenState();
}

class _HesaplarScreenState extends State<HesaplarScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'Hesaplar',
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            //color: Colors.white
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            SizedBox(
              height: size.height * 0.03,
            ),
            hesaplarcontainer(size, "Kasa Hesapları"),
            //  hesaplarcontainer1(Icons.warehouse, "TL Kasa",),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 3,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(const TLKasaScreen());
                      },
                      child: const ListTile(
                          leading: Icon(Icons.warehouse, color: kIconColor2),
                          title: Text(
                            "TL Kasa",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0)))
                ],
              ),
            ),
            hesaplarcontainer(size, "Banka Hesapları"),

            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 3,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(const BankaTLScreen());
                      },
                      child: const ListTile(
                          leading:
                              Icon(Icons.currency_lira, color: kIconColor2),
                          title: Text(
                            "Banka TL Hesabı",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0))),
                  GestureDetector(
                      onTap: () {
                        Get.to(const BankaUSDScreen());
                      },
                      child: const ListTile(
                          leading: Icon(Icons.attach_money, color: kIconColor2),
                          title: Text(
                            "Banka USD Hesabı",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0))),
                  GestureDetector(
                      onTap: () {
                        Get.to(const BankaEURScreen());
                      },
                      child: const ListTile(
                          leading: Icon(Icons.euro, color: kIconColor2),
                          title: Text(
                            "Banka EUR Hesabı",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0))),
                ],
              ),
            ),
            hesaplarcontainer(size, "POS Hesapları"),
            //  hesaplarcontainer1(Icons.point_of_sale, "POS Hesabı"),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 3,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(const POSHesabiScreen());
                      },
                      child: const ListTile(
                          leading:
                              Icon(Icons.point_of_sale, color: kIconColor2),
                          title: Text(
                            "POS Hesabı",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0)))
                ],
              ),
            ),

            hesaplarcontainer(size, "Kredi Kartları"),
            //    hesaplarcontainer1(Icons.credit_card, "Kredi Kartım"),
            Container(
              color: Colors.white,
              width: MediaQuery.of(context).size.width * 3,
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.to(const KrediKartlarimScreen());
                      },
                      child: const ListTile(
                          leading: Icon(Icons.credit_card, color: kIconColor2),
                          title: Text(
                            "Kredi Kartım",
                          ),
                          trailing: Icon(Icons.navigate_next,
                              color: kIconColor2, size: 30.0)))
                ],
              ),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: kButtonColor,
        child: const Icon(Icons.add),
        onPressed: () {
          // Get.to(const HesapBilgileri());
        },
        //  label: Text('Ekle'),
      ),
    );
  }

  Container hesaplarcontainer(Size size, String text) {
    return Container(
      height: 35,
      alignment: Alignment.center,
      color: Colors.grey.shade200,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: kTextColor2,
          fontWeight: FontWeight.bold,
          fontSize: size.height * 0.032,
        ),
      ),
    );
  }
}
