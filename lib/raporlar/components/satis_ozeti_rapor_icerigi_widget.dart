import 'package:flutter/material.dart';
class SatisOzetiRaporIcerigiWidget extends StatelessWidget {

  final String baslikTarih;
  final String toplamTutarText;
  final String indirimFiyat;
  final String netTutarText;
  final String tutarText;
  final String kdvFiyat;
  final String faturaSayisi;


  const SatisOzetiRaporIcerigiWidget({
    Key? key,
    required this.baslikTarih,
    required this.toplamTutarText,
    required this.indirimFiyat,
    required this.netTutarText,
    required this.tutarText,
    required this.kdvFiyat,
    required this.faturaSayisi,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(
            height: 20,
          ),
          Text(
            baslikTarih,
            style:const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        const  SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "Toplam Tutar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    toplamTutarText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
               const   SizedBox(height: 20,),
                    const  Text(
                    "Tutar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    tutarText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                const  Text(
                    "İndirim",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                  Text(
                    indirimFiyat,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const  Text(
                    "KDV",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                 const SizedBox(
                    height: 5,
                  ),
                  Text(
                    kdvFiyat,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 const Text(
                    "Net Tutar",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    netTutarText,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                    const  SizedBox(
                    height: 20,
                  ),
                    const Text(
                    "Fatura Sayısı",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                const  SizedBox(
                    height: 5,
                  ),
                  Text(
                    faturaSayisi,
                    style:const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        const  SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

