//satis_faturaları, satis_siparisler, satis_serbest_meslek_makbuzu,
//alis_faturaları, alis_siparisler, alis_serbest_meslek_makbuzu, giderler
import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus eventBus = EventBus();

class ContainerWidget extends StatefulWidget {
  final String tedarikciAdi;
  final String? tedarikciNo;
  final String? tarih;
  final String? ustTarih;
  final String paraBirimi;
  final String? durumu;
  final String? durumuSag;
  final String? odemeVadesi;
  final Widget page;
  final IconData? icon;

  const ContainerWidget({
    Key? key, 
    required this.tedarikciAdi,
    this.tedarikciNo,
    this.tarih,
    this.ustTarih,
    required this.paraBirimi,
    this.durumu,
    this.durumuSag,
    this.odemeVadesi,
    this.icon,
    required this.page,
  }): super(key: key);

  @override
  _ContainerWidgetState createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  bool isSelected = false;

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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.page,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (isSelected) checkBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.ustTarih ?? "", style: const TextStyle(color: Colors.grey, fontSize: 14)),
                Row(
                  children: [
                    if (widget.icon != null) Icon(widget.icon),
                    Text(widget.tedarikciAdi, style: const TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
                Text(widget.tedarikciNo ?? "", style: const TextStyle(color: Colors.grey, fontSize: 14)),
                if (widget.durumu != null) Text(widget.durumu!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                if (widget.odemeVadesi != null) Text(widget.odemeVadesi!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.tarih ?? "", style: const TextStyle(color: Colors.grey, fontSize: 14)),
                  Text(widget.paraBirimi, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  if (widget.durumuSag != null) Text(widget.durumuSag!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
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
