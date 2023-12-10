import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

EventBus eventBus = EventBus();

class ContainerWidgetNew extends StatefulWidget {
  final String tedarikciAdi;
  final String? tedarikciNo;
  final String? tarih;
  final String paraBirimi;
  final String toplam;
  final Widget? page;
  final bool showInfo;
  final bool vade;
  final bool iconKareBox;

  const ContainerWidgetNew({
    this.showInfo = false,
    this.vade = false,
    this.iconKareBox = false,
    Key? key,
    required this.tedarikciAdi,
    this.tedarikciNo,
    this.tarih,
    required this.paraBirimi,
    required this.toplam,
    this.page,
  }) : super(key: key);

  @override
  _ContainerWidgetNewState createState() => _ContainerWidgetNewState();
}

class _ContainerWidgetNewState extends State<ContainerWidgetNew> {
  bool isSelected = false;
  bool showCheckbox = false;

  @override
  void initState() {
    super.initState();
    eventBus.on<ContainerSelectedEvent>().listen((event) {
      if (mounted) {
        setState(() {
          isSelected = event.isSelected;
        });
      }
    });
    eventBus.on<ShowCheckboxEvent>().listen((event) {
      if (mounted) {
        setState(() {
          showCheckbox = event.shouldShow;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Widget checkBox = Checkbox(
      value: isSelected,
      onChanged: (value) {
        setState(() {
          isSelected = value!;
        });
      },
    );

    return InkWell(
      onTap: () {
        Get.to(() => widget.page!);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 13, 8, 13),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (showCheckbox) checkBox,
                Row(
                  children: [
                    CircleIconAltin(
                      iconData: 'assets/icons/newicon/nokta.png',
                      color: color8,
                      containerheight: 20,
                      containerwidth: 20,
                      rightpadding: 5,
                      onPressed: () {},
                    ),
                    Text(widget.tedarikciNo!,
                        style: const TextStyle(fontSize: 12)),
                  ],
                ),
                if (widget.tarih != null)
                  Text(widget.tarih ?? "",
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                /*     Align(
                  alignment: Alignment.centerRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          if (widget.showInfo)
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
                          const SizedBox(
                            width: 5,
                          ),
                          if (widget.showInfo)
                            const Text(
                              'XAU/1000',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.black),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),*/
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.tedarikciAdi,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                  Text(widget.paraBirimi,
                      style: const TextStyle(
                          fontSize: 12, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, left: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (widget.vade)
                    RedButtonWidget(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                      buttonColor: color1,
                      textColor: color2,
                    ),
                  Text(widget.toplam,
                      style: const TextStyle(
                          color: color2,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerSelectedEvent {
  final bool isSelected;

  ContainerSelectedEvent(this.isSelected);
}

class ShowCheckboxEvent {
  final bool shouldShow;

  ShowCheckboxEvent(this.shouldShow);
}
