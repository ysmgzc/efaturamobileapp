import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:flutter/material.dart';

class UrunEkleBorderSaveAnimasyonsuzAltin extends StatelessWidget {
  const UrunEkleBorderSaveAnimasyonsuzAltin({
    required this.baslik2,
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    this.route,
    this.text,
    this.width = 0.95,
    this.height = 0.18,
    required this.baslik,
    required this.birim,
    required this.fiyat,
    required this.iscilik,
    required this.iscilikDegeri,
    required this.iscilikHesabi,
    required this.miktar,
    required this.kur,
    required this.araToplamFiyat,
    required this.kurDegeri,
    this.bottomPadding = 0.0,
    this.showInfo = false,
  });
  final bool showInfo;
  final double bottomPadding;
  final double screenHeight;
  final double screenWidth;
  final Widget? route;
  final String? text;
  final double width;
  final double height;
  final String baslik;
  final String baslik2;
  final String birim;
  final String fiyat;
  final String iscilik;
  final String iscilikDegeri;
  final String iscilikHesabi;
  final String kur;
  final String miktar;
  final String araToplamFiyat;
  final String kurDegeri;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * height,
      width: screenWidth * width,
      decoration: BoxDecoration(
        color: Colors.white,
        //   color: const Color(0xffFCFCFC),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          baslik,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          baslik2,
                          style: const TextStyle(
                            fontSize: 10,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          birim,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        const Text(
                          ' x ',
                          style: TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          fiyat,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          iscilik,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          iscilikDegeri,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          kur,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          kurDegeri,
                          style: const TextStyle(
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    InkWell(
                      onTap: () {
                        ShowDialogEkle();
                      },
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.info_outline,
                            size: 15,
                            color: Colors.black,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text(
                      'XAU/1000',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(araToplamFiyat,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Text(iscilikHesabi,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                    )),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text("Miktar:",
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Text(miktar,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 13,
                        )),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
