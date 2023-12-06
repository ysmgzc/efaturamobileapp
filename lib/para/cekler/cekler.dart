import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/cekler/cek_cikisi/cek_cikisi_ekle.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_cirolama.dart';
import 'package:efaturamobileapp/para/cekler/cek_girisi/cek_girisi_ekle.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../bottom_show_dialog_widget.dart';
import '../../float_action_buton_widget.dart';
import '../../show_dialog_ekle.dart';
import 'cek_girisi/islem_listesi.dart';
import 'cek_girisi/tahsilat_makbuzu.dart';
import 'secenekler/ceklerdetayliarama.dart';

class CeklerScreen extends StatefulWidget {
  const CeklerScreen({Key? key}) : super(key: key);

  @override
  State<CeklerScreen> createState() => _CeklerScreenState();
}

class _CeklerScreenState extends State<CeklerScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Çekler',
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const CeklerDetayliArama(),
              ),
              SheetOption(
                icon: Image.asset(
                  'assets/icons/excelicon.png',
                  width: 20,
                  height: 20,
                ),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.015,
              ),
              const SearchField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 0),
                      blurRadius: 20,
                      color: Colors.grey.shade300,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CustomInkWell(
                      companyName: 'Deneme Satış Ltd. Şti.',
                      status: 'Portföyde',
                      number: '123',
                      date: 'Vade Tarihi: 16 MAYIS',
                      chequeType: 'Müşteri Çeki',
                      dueDate: '16 Mayıs',
                      amount: '₺1000',
                      onTap: () {
                        List<DialogOption> dialogOptions = [
                          DialogOption(
                            title: "Çeki Görüntüle",
                            onPressed: () {
                              Get.to(const CeklerScreen());
                            },
                          ),
                          DialogOption(
                            title: "Tahsil Et",
                            onPressed: () {
                              // Get.to(const TasilatMakbuzuEkle());
                            },
                          ),
                          DialogOption(
                            title: "Cirola",
                            onPressed: () {
                              Get.to(const CekCirolamaEkle());
                            },
                          ),
                          DialogOption(
                            title: "İşlem Listesi",
                            onPressed: () {
                              Get.to(const IslemListesiScreen());
                            },
                          ),
                        ];
                        ShowDialogEkle.showCustomDialog(
                            context, dialogOptions, 'Sıralama');
                      },
                    ),
                    const Divider(),
                    CustomInkWell(
                      companyName: 'Deneme2 Satış Ltd. Şti.',
                      status: 'Portföyde',
                      number: '123',
                      date: 'Vade Tarihi: 16 MAYIS',
                      chequeType: 'Müşteri Çeki',
                      dueDate: '16 Mayıs',
                      amount: '₺1000',
                      onTap: () {
                        List<DialogOption> dialogOptions = [
                          DialogOption(
                            title: "Çeki Görüntüle",
                            onPressed: () {
                              Get.to(const CeklerScreen());
                            },
                          ),
                          DialogOption(
                            title: "Ödeme Yap",
                            onPressed: () {
                              //Get.to(const TasilatMakbuzuEkle());
                            },
                          ),
                          DialogOption(
                            title: "İşlem Listesi",
                            onPressed: () {
                              Get.to(const IslemListesiScreen());
                            },
                          ),
                        ];
                        ShowDialogEkle.showCustomDialog(
                            context, dialogOptions, 'Sıralama');
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: CustomFAB(
          isSpeedDial: true,
          childrenData: [
            SpeedDialData(
              label: 'Çek Çıkışı',
              route: const CekCikisiEkle(),
            ),
            SpeedDialData(
              label: 'Çek Girişi',
              route: const CekGirisiEkle(),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CustomInkWell extends StatelessWidget {
  final String companyName;
  final String status;
  final String number;
  final String date;
  final String chequeType;
  final String dueDate;
  final String amount;
  final VoidCallback onTap;

  const CustomInkWell({
    Key? key,
    required this.companyName,
    required this.status,
    required this.number,
    required this.date,
    required this.chequeType,
    required this.dueDate,
    required this.amount,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(companyName,
                    style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text(status,
                    style: const TextStyle(color: Colors.black, fontSize: 16)),
                Text(number,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(date,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Text(chequeType,
                    style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(dueDate,
                      style: const TextStyle(color: Colors.grey, fontSize: 14)),
                  Text(amount,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
