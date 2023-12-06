import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:flutter/material.dart';

class VerileriDisaAktarDetayliArama extends StatefulWidget {
  const VerileriDisaAktarDetayliArama({super.key});

  @override
  State<VerileriDisaAktarDetayliArama> createState() =>
      _VerileriDisaAktarDetayliAramaState();
}

class _VerileriDisaAktarDetayliAramaState
    extends State<VerileriDisaAktarDetayliArama> {
  bool value = false;
  TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detaylı Arama',
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Container(
            color: Colors.white,
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.05,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              children: [
//----------------------Tarih-------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tarih Aralığı",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const CustomDatePickerDialog(
                          titleText: 'Tarih',
                          startText: 'Başlangıç Tarihini Seç',
                          endText: 'Bitiş Tarihini Seç',
                        );
                      },
                    );
                  },
                ),
              ],
            )),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
      ),
    );
  }
}
