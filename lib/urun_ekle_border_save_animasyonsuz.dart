import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class UrunEkleBorderSaveAnimasyonsuz extends StatelessWidget {
  const UrunEkleBorderSaveAnimasyonsuz({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    this.route,
    this.text,
    this.width = 0.95,
    this.height = 0.25,
    required this.baslik,
    required this.altbaslikBirim,
    required this.altbaslikFiyat,
    required this.ustText,
    required this.ustTextFiyat,
    this.altTextFiyat,
    required this.sagTextFiyat,
    required this.araToplamFiyat,
    required this.sagText,
    this.altText,
    this.bottomPadding = 0.0,
  });
  final double bottomPadding;
  final double screenHeight;
  final double screenWidth;
  final Widget? route;
  final String? text;
  final double width;
  final double height;
  final String baslik;
  final String altbaslikBirim;
  final String altbaslikFiyat;
  final String ustText;
  final String ustTextFiyat;
  final String? altTextFiyat;
  final String sagTextFiyat;
  final String araToplamFiyat;
  final String sagText;
  final String? altText;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * height,
      width: screenWidth * width,
      decoration: BoxDecoration(
        color: const Color(0xffFCFCFC),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
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
                    Text(
                      baslik,
                      style: const TextStyle(
                          color: Colors.blue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          altbaslikBirim,
                          style: const TextStyle(
                              color: yTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        const Text(
                          ' x ',
                          style: TextStyle(
                              color: yTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          altbaslikFiyat,
                          style: const TextStyle(
                              color: yTextColor,
                              fontSize: 13,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(ustText,
                                style: const TextStyle(
                                  color: yTextColor,
                                  fontSize: 13,
                                )),
                            Text(
                              ustTextFiyat,
                              style: const TextStyle(fontSize: 13),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(altText ?? "",
                                style: const TextStyle(
                                  color: yTextColor,
                                  fontSize: 13,
                                )),
                            Text(altTextFiyat ?? "",
                                style: const TextStyle(
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: bottomPadding),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(sagText,
                                  style: const TextStyle(
                                    color: yTextColor,
                                    fontSize: 13,
                                  )),
                              Text(sagTextFiyat,
                                  style: const TextStyle(
                                    fontSize: 13,
                                  )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const VerticalDivider(),
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(araToplamFiyat,
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
