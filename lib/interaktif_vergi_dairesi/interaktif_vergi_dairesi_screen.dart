import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/interaktif_vergi_dairesi/interaktifvergidairesidetayliarama.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:flutter/material.dart';

import '../bottom_show_dialog_widget.dart';
import '../search_field.dart';
import '../verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';

class InteraktifVergiDairesiScreen extends StatelessWidget {
  const InteraktifVergiDairesiScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'İnteraktif Vergi Dairesi',
          ),
          actions: [
            CustomIconButton(
              options: [
                SheetOption(
                  icon: const Icon(Icons.filter_alt, color: Colors.black),
                  text: 'Detaylı Arama',
                  page: const InteraktifVergiDairesiDetayliArama(),
                ),
                SheetOption(
                  icon: const Icon(Icons.swap_vert, color: Colors.black),
                  text: 'Sıralama',
                  onTap: () {
                    Navigator.pop(context);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SiralamaIslemi(
                          onSort: (sortedItems) {},
                          optionIds: const [3, 4, 5, 6, 7, 8],
                        );
                      },
                    );
                  },
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
                SheetOption(
                  icon: const Icon(Icons.delete, color: Colors.black),
                  text: 'Sil',
                  onTap: () {
                    eventBus.fire(ShowCheckboxEvent(true));
                    Navigator.pop(context);
                  },
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
              ],
            ),
          ),
        ));
  }
}
