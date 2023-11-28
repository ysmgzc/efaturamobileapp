import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Kasa {
  final String birim;
  final String text;
  final Widget? route;

  Kasa({required this.birim, required this.text, this.route});
}

class ParaWidget extends StatelessWidget {
  final String? baslik;
  final String? baslikText;
  final List<Kasa> kasalar;
  final Widget? containerRoute;

  const ParaWidget({
    Key? key,
    this.baslik,
    this.baslikText,
    required this.kasalar,
    this.containerRoute,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (containerRoute != null) {
          Get.to(containerRoute!);
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(5.0),
            ),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 0),
                blurRadius: 20,
                color: Colors.grey.shade300,
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      baslik ?? "",
                      style: const TextStyle(
                        color: color2,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      baslikText ?? "",
                      style: const TextStyle(
                        color: color2,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
                ...kasalar.map((kasa) {
                  return GestureDetector(
                    onTap: () {
                      if (kasa.route != null) {
                        Get.to(kasa.route!);
                      }
                    },
                    child: Column(
                      children: [
                        const Divider(),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              kasa.birim,
                              style: const TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                              ),
                            ),
                            Text(
                              kasa.text,
                              style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    ),
                  );
                }).toList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
