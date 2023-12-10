// sliding_panel.dart

import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/altin_screen.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat%20_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_sec_screen.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/islemler/components/urun_ekle_border_save_animasyonsuz_altin.dart';
import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_alt%C4%B1n/urun_ekle_altin.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';

class SlidingPanel extends StatefulWidget {
  final bool button;
  final bool text1;
  final String metin1;
  final String metin2;
  final String metin3;
  final String metin4;
  final String metin5;
  final String metin6;
  final String metin7;
  final String metin8;
  final String metin9;
  final bool activemetin;
  final bool UrunEkleBorderSaveAnimasyonsuzAltin;

  const SlidingPanel({
    this.UrunEkleBorderSaveAnimasyonsuzAltin = false,
    this.button = false,
    this.text1 = true,
    this.activemetin = false,
    this.metin1 = 'Toplam İşçilik Miktarı',
    this.metin2 = 'Toplam Miktar',
    this.metin3 = 'İndirim',
    this.metin4 = 'Yuvarlama',
    this.metin5 = 'Hesaplanan Vergiler',
    this.metin6 = 'Vergiler Dahil TOPLAM',
    this.metin7 = 'Vergiler Dahil Tutar',
    this.metin8 = 'Etiket / Açıklamalar',
    this.metin9 = 'Notlar',
  });

  @override
  _SlidingPanelState createState() => _SlidingPanelState();
}

class _SlidingPanelState extends State<SlidingPanel> {
  final PanelController _panelController = PanelController();
  bool isPanelOpen = false;

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
      controller: _panelController,
      maxHeight: MediaQuery.of(context).size.height / 2,
      panel: _buildPanel(),
      onPanelOpened: () {
        setState(() {
          isPanelOpen = true;
        });
      },
      onPanelClosed: () {
        setState(() {
          isPanelOpen = false;
        });
      },
    );
  }

  Widget _buildPanel() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            IconButton(
              onPressed: () {
                if (isPanelOpen) {
                  _panelController.close();
                } else {
                  _panelController.open();
                }
              },
              icon: isPanelOpen
                  ? Image.asset('assets/icons/newicon/close_undo.png',
                      width: 24, height: 24)
                  : Image.asset('assets/icons/newicon/open_undo.png',
                      width: 24, height: 24),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Column(
                children: [
                  if (widget.button)
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Tahsilat Detayı",
                          style: TextStyle(
                              fontSize: 12.0, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: RectangleButtonWidget(
                            text: "Belge & Sipariş & Fatura İlişkilendirme (1)",
                            textColor: color6,
                            bgColor: color8,
                            iconColor: color6,
                            route: UrunEkleAltin(),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleIconAltin(
                                  iconData: Icons.fiber_manual_record,
                                  iconColor: color6,
                                  color: color8,
                                  rightpadding: 8,
                                  onPressed: () {
                                    Get.to(
                                      UrunEkleAltin(),
                                    );
                                  },
                                ),
                                Text(
                                  "FT-20230001",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "16/06/2022",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "140 GR",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              "94,900 GR",
                              style: TextStyle(fontSize: 12, color: color2),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleIconAltin(
                                  iconData: Icons.fiber_manual_record,
                                  iconColor: color6,
                                  color: color8,
                                  rightpadding: 8,
                                  onPressed: () {},
                                ),
                                Text(
                                  "FT-20230001",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "16/06/2022",
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Text(
                                  "140 GR",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Text(
                              "94,900 GR",
                              style: TextStyle(fontSize: 12, color: color2),
                            ),
                          ],
                        ),
                      ],
                    ),
                  if (widget.text1)
                    Column(children: [
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.metin1,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '3,00 GR',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                widget.metin2,
                                style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                width: 5,
                              ),
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
                                      color: color6,
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Text(
                            '140,400 GR',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Divider(thickness: 2),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.metin3,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '0,00 TRY',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.metin4,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '0,00 TRY',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.metin5,
                            style: TextStyle(fontSize: 12.0),
                          ),
                          Text(
                            '0,00 TRY',
                            style: TextStyle(fontSize: 12.0),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.metin6,
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '0,00 TRY',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(
                        thickness: 1,
                      ),
                      if (widget.activemetin)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                widget.metin7,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                alignment: Alignment.centerRight,
                                child: ActiveSwitch(
                                  onChanged: (bool value) {},
                                ),
                              ),
                            ),
                          ],
                        ),
                    ]),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.metin8,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Text(
                        widget.metin9,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        ' ',
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //-----------
                  if (widget.UrunEkleBorderSaveAnimasyonsuzAltin)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Toplam Tahsil Edilen",
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              '45,500 GR',
                              style: TextStyle(
                                  fontSize: 14.0, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        UrunEkleBorderSaveAnimasyonsuzAltin(
                          showInfo: true,
                          screenHeight: MediaQuery.of(context).size.height,
                          screenWidth: MediaQuery.of(context).size.width,
                          baslik: "Bilezik ",
                          baslik2: "22K",
                          birim: '100 GR',
                          fiyat: "916",
                          iscilik: "İşçilik :",
                          iscilikDegeri: "0,020",
                          kur: "Kur :",
                          kurDegeri: "₺0,00",
                          araToplamFiyat: '91,960 GR',
                          iscilikHesabi: "2,00 GR",
                          miktar: "92,600 GR",
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
