import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/icon_widget.dart';
import 'package:efaturamobileapp/islemler/components/rectangle_button_widget.dart';
import 'package:efaturamobileapp/show_dialog_ekle.dart';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

EventBus eventBus = EventBus();

class ContainerWidget extends StatefulWidget {
  final String? altinMetin;
  final String? baslik;
  final String tedarikciAdi;
  final String? tedarikciNo;
  final String? tarih;
  final String? ustTarih;
  final String paraBirimi;
  final String? durumu;
  final String? durumuSag;
  final String? odemeVadesi;
  final Widget? page;
  final TextStyle? tedarikciAdiStyle;
  final TextStyle? tedarikciNoStyle;
  final TextStyle? tarihStyle;
  final TextStyle? ustTarihStyle;
  final TextStyle? paraBirimiStyle;
  final TextStyle? durumuStyle;
  final TextStyle? durumuSagStyle;
  final TextStyle? odemeVadesiStyle;
  final bool showInfo;
  final bool vade;
  final bool iconKareBox;

  const ContainerWidget({
    this.showInfo = false,
    this.vade = false,
    this.iconKareBox = false,
    Key? key,
    this.altinMetin,
    this.baslik,
    required this.tedarikciAdi,
    this.tedarikciNo,
    this.tarih,
    this.ustTarih,
    required this.paraBirimi,
    this.durumu,
    this.durumuSag,
    this.odemeVadesi,
    this.page,
    this.tedarikciAdiStyle,
    this.tedarikciNoStyle,
    this.tarihStyle,
    this.ustTarihStyle,
    this.paraBirimiStyle,
    this.durumuStyle,
    this.durumuSagStyle,
    this.odemeVadesiStyle,
  }) : super(key: key);

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showCheckbox) checkBox,
            Row(
              children: [
                Column(
                  children: [
                    if (widget.iconKareBox)
                      CustomRectangleIconAltin(
                        iconData: 'assets/icons/newicon/box.png',
                        color: color8,
                        iconpadding: 8,
                        containerwidth: 45,
                        containerheight: 45,
                        onPressed: () {},
                      ),
                  ],
                ),
                SizedBox(
                  width: 18,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: buildChildren(),
                ),
              ],
            ),
            Align(
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
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                    ],
                  ),
                  if (widget.altinMetin != null)
                    Text(widget.altinMetin ?? "",
                        style: widget.tarihStyle ??
                            const TextStyle(color: Colors.grey, fontSize: 14)),
                  if (widget.tarih != null)
                    Text(widget.tarih ?? "",
                        style: widget.tarihStyle ??
                            const TextStyle(color: Colors.grey, fontSize: 14)),
                  Text(widget.paraBirimi,
                      style: widget.paraBirimiStyle ??
                          const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                  if (widget.durumuSag != null)
                    Text(widget.durumuSag!,
                        style: widget.durumuSagStyle ??
                            const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildChildren() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> children = [];

    if (widget.baslik != null) {
      children.add(
        Text(
          widget.baslik!,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    if (widget.ustTarih != null) {
      children.add(Text(widget.ustTarih!,
          style: widget.ustTarihStyle ??
              const TextStyle(color: Colors.grey, fontSize: 12)));
    }

    if (widget.tedarikciNo != null) {
      children.add(Text(widget.tedarikciNo!,
          style: widget.tedarikciNoStyle ?? const TextStyle(fontSize: 12)));
    }
    children.add(
      Text(widget.tedarikciAdi,
          style: widget.tedarikciAdiStyle ??
              const TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
    );

    if (widget.durumu != null) {
      children.add(Text(widget.durumu!,
          style: widget.durumuStyle ??
              const TextStyle(color: Colors.grey, fontSize: 14)));
    }

    if (widget.odemeVadesi != null) {
      children.add(Text(widget.odemeVadesi!,
          style: widget.odemeVadesiStyle ??
              const TextStyle(color: Colors.grey, fontSize: 14)));
    }
    if (widget.vade)
      children.add(
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: RedButtonWidget(
              screenWidth: screenWidth, screenHeight: screenHeight),
        ),
      );
    return children;
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
