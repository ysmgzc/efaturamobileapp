import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';

EventBus eventBus = EventBus();

class ContainerWidget extends StatefulWidget {
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
  final IconData? icon;
  final TextStyle? tedarikciAdiStyle;
  final TextStyle? tedarikciNoStyle;
  final TextStyle? tarihStyle;
  final TextStyle? ustTarihStyle;
  final TextStyle? paraBirimiStyle;
  final TextStyle? durumuStyle;
  final TextStyle? durumuSagStyle;
  final TextStyle? odemeVadesiStyle;

  const ContainerWidget({
    Key? key,
    this.baslik,
    required this.tedarikciAdi,
    this.tedarikciNo,
    this.tarih,
    this.ustTarih,
    required this.paraBirimi,
    this.durumu,
    this.durumuSag,
    this.odemeVadesi,
    this.icon,
    this.page,
    this.tedarikciAdiStyle,
    this.tedarikciNoStyle,
    this.tarihStyle,
    this.ustTarihStyle,
    this.paraBirimiStyle,
    this.durumuStyle,
    this.durumuSagStyle,
    this.odemeVadesiStyle,
  }): super(key: key);

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
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget.page!,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if (showCheckbox) checkBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: buildChildren(),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.tarih ?? "", style: widget.tarihStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)),
                  Text(widget.paraBirimi, style: widget.paraBirimiStyle ?? const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  if (widget.durumuSag != null) Text(widget.durumuSag!, style: widget.durumuSagStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> buildChildren() {
    List<Widget> children = [];

    if (widget.baslik != null) {
      children.add(
        Text(
          widget.baslik!,
          style:const TextStyle(color: Colors.black, fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    if (widget.ustTarih != null) {
      children.add(Text(widget.ustTarih!, style: widget.ustTarihStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)));
    }

    children.add(
      Row(
        children: [
          if (widget.icon != null) Icon(widget.icon),
          Text(widget.tedarikciAdi, style: widget.tedarikciAdiStyle ?? const TextStyle(color: Colors.black, fontSize: 16)),
        ],
      ),
    );

    if (widget.tedarikciNo != null) {
      children.add(Text(widget.tedarikciNo!, style: widget.tedarikciNoStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)));
    }

    if (widget.durumu != null) {
      children.add(Text(widget.durumu!, style: widget.durumuStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)));
    }

    if (widget.odemeVadesi != null) {
      children.add(Text(widget.odemeVadesi!, style: widget.odemeVadesiStyle ?? const TextStyle(color: Colors.grey, fontSize: 14)));
    }

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
