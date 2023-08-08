import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class UrunEkleBorderSave extends StatefulWidget {
  const UrunEkleBorderSave({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.route,
    required this.text,
    this.width = 0.95,
    required this.baslik,
    required this.altbaslikKG,
    required this.altbaslikTL,
    required this.kdvFiyat,
    required this.ekVergiFiyat,
    required this.indirimFiyat,
    required this.araToplamFiyat,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final Widget route;
  final String text;
  final double width;
  final String baslik;
  final String altbaslikKG;
  final String altbaslikTL;
  final String kdvFiyat;
  final String ekVergiFiyat;
  final String indirimFiyat;
  final String araToplamFiyat;

  @override
  _UrunEkleBorderSaveState createState() => _UrunEkleBorderSaveState();
}

class _UrunEkleBorderSaveState extends State<UrunEkleBorderSave> {
  bool _expanded = false;

  @override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      setState(() {
        _expanded = !_expanded;
      });
    },
    child: AnimatedContainer(
      duration:const Duration(milliseconds: 200),
      height: _expanded ? widget.screenHeight * 0.25 : widget.screenHeight * 0.10,
      width: widget.screenWidth * widget.width,
      decoration: BoxDecoration(
        color: const Color(0xffFCFCFC),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.baslik,
                        style: const TextStyle(color: Colors.blue, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            widget.altbaslikKG,
                            style: const TextStyle(color: yTextColor, fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            ' x ',
                            style: TextStyle(color: yTextColor, fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.altbaslikTL,
                            style: const TextStyle(color: yTextColor, fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      if (_expanded) _expandedWidget(),
                    ],
                  ),
                ),
                const VerticalDivider(),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(widget.araToplamFiyat,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                          )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

  Widget _expandedWidget() {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               const Text('KDV(%18)',
                    style:  TextStyle(
                      color: yTextColor,
                      fontSize: 14,
                    )),
                Text(
                  widget.kdvFiyat,
                  style: const TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 15,
                ),
              const Text('EK VERGİ',
                    style:  TextStyle(
                      color: yTextColor,
                      fontSize: 14,
                    )),
                Text(widget.ekVergiFiyat,
                    style: const TextStyle(
                      fontSize: 14,
                    )),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              const  Text('İNDİRİM',
                    style:  TextStyle(
                      color: yTextColor,
                      fontSize: 14,
                    )),
                Text(widget.indirimFiyat,
                    style: const TextStyle(
                      fontSize: 14,
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}


