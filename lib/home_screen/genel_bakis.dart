import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/home_screen/borc_alacak_grafik.dart';
import 'package:efaturamobileapp/home_screen/pasta_grafik.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/para/cekler/cekler.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/eur_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tl_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/usd_kasa.dart';
import 'package:efaturamobileapp/para_widget.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class GenelBakisScreen extends StatelessWidget {
  const GenelBakisScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int value1 = 5000;
int value2 = 7500;
int sonuc = value2 - value1;

    final List<SalesData> data = [
      SalesData("Ocak", 250,300),
      SalesData("Şubat", 300,300),
      SalesData("Mart", 100,300),
      SalesData("Nisan", 400,300),
      SalesData("Mayıs", 200,300),
      SalesData("Haziran", 400,300),
      SalesData("Temmuz", 300,300),
      SalesData("Ağustos", 300,300),
      SalesData("Eylül", 250,300),
      SalesData("Ekim", 500,300),
      SalesData("Kasım", 400,300),
      SalesData("Aralık", 250,300),
    ];

    final series = charts.Series(
      id: "Satışlar",
      data: data,
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.sales,
      colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
    );
  final collectionSeries = charts.Series(
      id: "Tahsilatlar",
      data: data,
      domainFn: (SalesData sales, _) => sales.month,
      measureFn: (SalesData sales, _) => sales.collection,
      colorFn: (_, __) => charts.MaterialPalette.purple.shadeDefault,
    );
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Genel Bakış', style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
         padding:const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            SizedBox(
              child: Center(
                child: Padding(
                 padding: const EdgeInsets.only(left: 10,right: 10),
                  child: Container(
                     decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius:const BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset:const Offset(0, 0),
                                blurRadius: 20,
                                color:  Colors.grey.shade300,
                              ),
                            ],
                          ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        children:  [
                        const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "SATIŞLAR & TAHSİLATLAR",
                              style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16)
                              ),
                            ),
                          const SizedBox(height: 16.0),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.3,//sayfanın yarısında grafik
                            child: charts.BarChart(
                              [series,collectionSeries],
                              animate: true,
                              vertical: true,
                              barGroupingType: charts.BarGroupingType.grouped,
                              domainAxis:const charts.OrdinalAxisSpec(
                                renderSpec: charts.SmallTickRendererSpec(
                                  labelRotation: 60,
                                  labelAnchor: charts.TickLabelAnchor.centered,
                                  labelStyle: charts.TextStyleSpec(
                                    fontSize: 12,
                                    color: charts.MaterialPalette.black,
                                  ),
                                ),
                              ),
                               primaryMeasureAxis:const charts.NumericAxisSpec( 
                                tickProviderSpec: charts.BasicNumericTickProviderSpec(
                                  desiredTickCount: 8,//dikeydeki çizginin bölünme sayisi
                                  ),
                                  ),
                            ),
                            
                            
                          ),
                        Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                    padding: const EdgeInsets.fromLTRB(0, 8, 0, 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          "SATIŞLAR",
                          style: TextStyle(fontSize: 14.0),
                        ),
                        const SizedBox(width: 70.0),
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Colors.purple,
                            shape: BoxShape.rectangle,
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        const Text(
                          "TAHSİLATLAR",
                          style: TextStyle(fontSize: 14.0),
                        ),
                      ],
                    ),
                      ),
                     const Padding(
                    padding:  EdgeInsets.fromLTRB(0, 8, 0, 8),
                    child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                            Column(
                              children: [
                                Text(
                                  "Ortalama Satış Tutarı(Ay)",
                                  style: TextStyle(fontSize: 13.0), 
                                  overflow: TextOverflow.ellipsis,
                                   maxLines: 1,
                                ),
                                 SizedBox(height: 8.0),
                                Text(
                                  "₺0.00", 
                                  style: TextStyle(fontSize: 14.0,color: Colors.blue,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Ortalama Tahsilat Tutarı(Ay)",
                                  style: TextStyle(fontSize: 13.0),
                                  overflow: TextOverflow.ellipsis,
                                   maxLines: 1,
                                ),
                                 SizedBox(height: 8.0),
                                Text(
                                  "₺0.00", 
                                  style: TextStyle(fontSize: 14.0,color: Colors.purple,),
                                ),
                              ],
                            ),
                          ],
                        )
                        
                      ),
                           const Padding(
                              padding:  EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Toplam Satış(Son 1 Yıl)",
                                  overflow: TextOverflow.ellipsis,
                                   maxLines: 1,
                                  style: TextStyle(fontSize: 13.0),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "₺0.00", 
                                  style: TextStyle(fontSize: 14.0,color: Colors.blue,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Toplam Tahsilat(Son 1 Yıl)",
                                  style: TextStyle(fontSize: 13.0),
                                  overflow: TextOverflow.ellipsis,
                                   maxLines: 1,
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "₺0.00", 
                                  style: TextStyle(fontSize: 14.0,color: Colors.purple,),
                                ),
                              ],
                            ),
                          ],
                        )
                        
                            ),
                       const  Padding(
                               padding:  EdgeInsets.fromLTRB(0, 8, 0, 8),
                              child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Column(
                              children: [
                                Text(
                                  "Toplam Satış(Bu Yıl)",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "₺0.00",
                                  style: TextStyle(fontSize: 14.0,color: Colors.blue,),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Text(
                                  "Toplam Tahsilat(Bu Yıl)",
                                  style: TextStyle(fontSize: 13.0,),
                                ),
                                SizedBox(height: 8.0),
                                Text(
                                  "₺0.00", 
                                  style: TextStyle(fontSize: 14.0,color: Colors.purple,),
                                ),
                              ],
                            ),
                          ],
                        )
                       ),
                    ],
                        ),
                        ],
                      ),
                      
                    ),
                  ),
                ),
              ),
            ),
//---------------------------
Padding(
  padding:const  EdgeInsets.fromLTRB(10, 20, 10, 20),
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
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Column(
        children: [
          SizedBox(
            height: 250,
            width: 800,
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: SimpleBarChart(    
                       
                    data: [
                      FinancialData('', 50),
                      FinancialData(' ', 75),
                    ],
                    animate: true,
                  ),
                ),
              const  Positioned(
                  top: 10, 
                  left: 10,  
                  child: Text('BORÇ & ALACAK', style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 16)),
                ),
                const SizedBox(height: 20,)
              ],
            ),
          ),
          //SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
            children: [
              Row(
                children: [
                  Column(
                    children: [
                     const Text('Borçlarım  ', style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const MusterilerTedarikcilerScreen()));
                            },
                            child: Text('₺$value1', style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
                          ),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Text('Alacaklarım', style: TextStyle(fontSize: 14)),
                      Row(
                        children: [
                          TextButton(
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const MusterilerTedarikcilerScreen()));
                            },
                            child: Text('₺$value2', style:const TextStyle(color: Colors.blue,fontWeight: FontWeight.bold,fontSize: 16)),
                          ),
                          const Icon(Icons.navigate_next),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
           const SizedBox(height: 15,),
           Text('Bakiye: ₺$sonuc', style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 16)),
        ],
      ),
    ),
  ),
),
//-----------------------------------------------------
 Center(
  child: Padding(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
      child:const Padding(
        padding:  EdgeInsets.all(20.0),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Toplam Nakit",
                    style: TextStyle(
                      color: yTextColor3,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    "₺0.00",
                    // '₺: ${total.toStringAsFixed(2)}',
                    style: TextStyle(
                      color: yTextColor3,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 200,
                  width: 200,
                  child: DonutChart(),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  ),
),


            //----------------------------------------   

             ParaWidget(
            baslik: "KASA TOPLAMI",
            baslikText: "₺ 0,00",
            kasalar: [
              Kasa(
                birim: "TL Kasası",
                text:  "₺ 0,00",
                route:const TLKasaScreen(), 
              ),
              Kasa(
                birim: "EUR Kasası",
                text:  "€ 0,00",
                route:const EURKasaScreen(), 
              ),
               Kasa(
                birim: "USD Kasası",
                text:  "\$ 0,00",
                route:const USDKasaScreen(), 
              ),
            ],
          ),

             ParaWidget(
            baslik: "ÇEK TOPLAMI",
            baslikText: "₺ 0,00",
            containerRoute:const CeklerScreen(),
            kasalar: [
              Kasa(
                birim: "TL Kasası",
                text:  "₺ 0,00",
              ),
              Kasa(
                birim: "EUR Kasası",
                text:  "€ 0,00",
              ),
               Kasa(
                birim: "USD Kasası",
                text:  "\$ 0,00",
              ),
            ],
          ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) =>const CeklerScreen()),
                      );
                    },
                    child: Column(
                    children: [
                      Center(
                        child: Padding(
                         padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 0.25,
                            width: MediaQuery.of(context).size.width * 0.95,
                             decoration:  BoxDecoration(
                            color: Colors.white,
                            borderRadius:const BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                            boxShadow: [
                              BoxShadow(
                                offset:const Offset(0, 0),
                                blurRadius: 20,
                                color:  Colors.grey.shade300,
                              ),
                            ],
                          ),
                            child:const Padding(
                              padding:  EdgeInsets.only(left: 15,right: 15),
                              child: Column(
                                children: [
                                     SizedBox(
                                      height: 15,
                                    ), 
                                  Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                      Text(
                                        "ÇEK TOPLAMI",
                                        style: TextStyle(
                                          color: yTextColor3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "₺0,00",
                                        style: TextStyle(
                                          color: yTextColor3,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Divider(),
                                SizedBox(
                                      height: 15,
                                    ), 
                                 Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                      Text(
                                        "TL",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "₺0,00",
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                    Divider(),
                                SizedBox(
                                      height: 15,
                                    ), 
                                 Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                      Text(
                                        "TL",
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        "₺0,00",
                                        style: TextStyle(
                                          color: Colors.black,
                                           fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                SizedBox(
                                      height: 20,
                                    ), 
                                ],
                              ),
                            ),
                          ),
                        ),
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

  class SalesData {
    final String month;
    final int sales;
    final int collection;

    SalesData(this.month, this.sales, this.collection);
  }
