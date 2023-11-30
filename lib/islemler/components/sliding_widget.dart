// sliding_panel.dart

import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/tahsilat_screen.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:get/get.dart';

class SlidingPanel extends StatefulWidget {
  final bool button;
  final bool text1;

  const SlidingPanel({
    this.button = false,
    this.text1 = true,
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
                            route: TahsilatScreen(),
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
                                    Get.to(const TahsilatScreen());
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
                                  onPressed: () {
                                    Get.to(const TahsilatScreen());
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
                            'Toplam İşçilik Miktarı',
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
                                'Toplam Miktar',
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
                            'İndirim',
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
                            'Yuvarlama',
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
                            'Hesaplanan Vergiler',
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
                            'Vergiler Dahil TOPLAM',
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            child: const Column(
                              children: [
                                Text(
                                  'Vergiler Dahil Tutar',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
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
                        'Etiket / Açıklamalar',
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
                        'Notlar',
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
