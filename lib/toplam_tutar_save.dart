import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:flutter/material.dart';

class ToplamTutarSave extends StatelessWidget {
  final List<String> textLabels;
  final List<String> textValues;
  final bool showHeader;
  final bool showInfo;

  const ToplamTutarSave({
    this.showInfo = false,
    Key? key,
    this.textLabels = const [],
    this.textValues = const [],
    this.showHeader = true, // Varsayılan olarak göster
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showHeader) // Header'ı sadece showHeader true olduğunda göster
          Padding(
            padding: EdgeInsets.only(/*left: 30,*/ top: 20, right: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'TOPLAM',
                  style: TextStyle(
                      fontSize: 16,
                      color: yTextColor,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'TUTAR',
                  style: TextStyle(
                      fontSize: 16,
                      color: yTextColor,
                      decoration: TextDecoration.underline,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        Container(
          alignment: Alignment.topCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(/*left: 30.0,*/ top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showInfo)
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (showInfo)
                            const Text(
                              'Ara Toplam:',
                              style:
                                  TextStyle(fontSize: 16, color: yTextColor2),
                            ),
                          const SizedBox(
                            width: 5,
                          ),
                          if (showInfo)
                            InkWell(
                              onTap: () {
                                ShowDialogEkle();
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    size: 20,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                        ],
                      ),
                    for (int i = 0; i < textLabels.length; i++)
                      Padding(
                        padding: EdgeInsets.only(top: i == 0 ? 15.0 : 10.0),
                        child: Text(
                          textLabels[i],
                          style:
                              const TextStyle(fontSize: 16, color: yTextColor2),
                        ),
                      ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (showInfo)
                      Padding(
                        padding: const EdgeInsets.only(top: 15.0),
                        child: Text(
                          "₺0.00",
                          style:
                              const TextStyle(fontSize: 16, color: yTextColor2),
                        ),
                      ),
                    for (int i = 0; i < textValues.length; i++)
                      Padding(
                        padding: EdgeInsets.only(top: i == 0 ? 15.0 : 10.0),
                        child: Text(
                          textValues[i],
                          style:
                              const TextStyle(fontSize: 16, color: yTextColor2),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
