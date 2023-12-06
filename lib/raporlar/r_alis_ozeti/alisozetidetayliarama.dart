import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlisOzetiDetayliArama extends StatefulWidget {
  const AlisOzetiDetayliArama({super.key});

  @override
  State<AlisOzetiDetayliArama> createState() => _AlisOzetiDetayliAramaState();
}

class _AlisOzetiDetayliAramaState extends State<AlisOzetiDetayliArama> {
  bool value = false;
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;

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
//------------------------"İşlem Tipi"------------------------------------------
                DetayliAramaWidget(
                  altMetin: "Tümü",
                  metin: "İşlem Tipi",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ShowDialogCheckBox(
                          dialogTitle: "İşlem Tipi",
                          checkboxTexts: [
                            "Alış Faturası",
                            "Giderler",
                          ],
                        );
                      },
                    );
                  },
                ),
//---------------------Vade Tarihi-------------------------------------------------
                DetayliAramaWidget(
                  metin: "Vade Tarihi",
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
                  altMetin: "Tümü",
                ),
//---------------------Müşteri Sec-------------------------------------------------
                DetayliAramaWidget(
                  metin: "Tedarikçi Seç",
                  altMetin: "Tümü",
                  onTap: () {
                    Get.to(MusterilerTedarikcilerScreen(
                      secim: 1,
                      appBarBaslik: "",
                    ));
                  },
                ),
//------------------------"Tür"------------------------------------------
                DetayliAramaWidget(
                  altMetin: "Tümü",
                  metin: "Tür",
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return const ShowDialogCheckBox(
                          dialogTitle: "Tür",
                          checkboxTexts: [
                            "Ürün",
                            "Alınan Hizmet",
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
