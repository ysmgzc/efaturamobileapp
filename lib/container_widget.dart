//satis_faturaları, satis_siparisler, satis_serbest_meslek_makbuzu,
//alis_faturaları, alis_siparisler, alis_serbest_meslek_makbuzu, giderler
import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
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
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => page,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 15, 8, 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                    Text(ustTarih??"", style: const TextStyle(
                        color: yTextColor,
                        fontSize: 14,)),
                Row(
                  children: [
                     if (icon != null) Icon(icon),
                    Text(tedarikciAdi, style: const TextStyle(color: Colors.black, fontSize: 16)),
                  ],
                ),
                Text(tedarikciNo??"", style: const TextStyle(color: Colors.grey, fontSize: 14)),
                if (durumu != null) Text(durumu!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                if (odemeVadesi != null) Text(odemeVadesi!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tarih??"",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                      )),
                  Text(paraBirimi, style: const TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),
                  if (durumuSag != null) Text(durumuSag!, style: const TextStyle(color: Colors.grey, fontSize: 14)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
