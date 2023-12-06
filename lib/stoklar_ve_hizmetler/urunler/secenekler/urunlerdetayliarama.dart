import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

import '../../../bottom_app_bar_design.dart';

class UrunlerDetayliArama extends StatefulWidget {
  const UrunlerDetayliArama({super.key});

  @override
  State<UrunlerDetayliArama> createState() => _UrunlerDetayliAramaState();
}

class _UrunlerDetayliAramaState extends State<UrunlerDetayliArama> {
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
//---------------------Durumu----------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Durumu",
                  altMetin: "Tümü",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ShowDialogCheckBox(
                          dialogTitle: "Durumu",
                          checkboxTexts: [
                            "Aktif",
                            "Pasif",
                          ],
                        );
                      },
                    );
                  },
                ),
//---------------------Kategori--------------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Kategori",
                  altMetin: "Tümü",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Kategori'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  heightFactor: 0.07,
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Vazgeç'),
                              onPressed: () {
                                setState(() {
                                  dateInput.text = '';
                                });
                              },
                            ),
                            TextButton(
                              child: const Text('Kaydet'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
//---------------------Marka--------------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Marka",
                  altMetin: "Tümü",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Marka'),
                          content: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 8),
                                TextFieldDecoration(
                                  screenWidth: screenWidth,
                                  screenHeight: screenHeight,
                                  heightFactor: 0.07,
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                          actions: [
                            TextButton(
                              child: const Text('Vazgeç'),
                              onPressed: () {
                                setState(() {
                                  dateInput.text = '';
                                });
                              },
                            ),
                            TextButton(
                              child: const Text('Kaydet'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
//----------------------Tarih-------------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tarih",
                  altMetin: "Tümü",
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
        onDeleteButtonPressed: () {},
        deleteButtonText: "TEMİZLE",
      ),
    );
  }
}
