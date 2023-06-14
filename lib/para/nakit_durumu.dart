import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/eur_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/tl_kasa.dart';
import 'package:efaturamobileapp/para/kasalar/alt_basliklar/usd_kasa.dart';
import 'package:efaturamobileapp/para_widget.dart';
import 'package:flutter/material.dart';

class NakitDurumuScreen extends StatefulWidget {
  const NakitDurumuScreen({super.key});

  @override
  State<NakitDurumuScreen> createState() => _NakitDurumuScreenState();
}

class _NakitDurumuScreenState extends State<NakitDurumuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
         //elevation: 0,
       shadowColor: Colors.transparent,
       backgroundColor: Colors.white,
       centerTitle: true,
        title: const Text(
          'Nakit Durumu',
          style: TextStyle(color: Colors.black),
        ),
         iconTheme:const IconThemeData(color: Colors.black),
      ),
       backgroundColor: Colors.white,
       body: SingleChildScrollView(
         child: Column(
           children: [
             Column(
                      children: [
                     const  SizedBox(
                      height: 20,
                    ), 
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10,right: 10),
                            child: Container(
                              alignment: Alignment.center,
                              height: MediaQuery.of(context).size.height * 0.08,
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
                                child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                    Text(
                                      "TOPLAM NAKİT",
                                      style: TextStyle(
                                        color: yTextColor3,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                    Text(
                                      "₺0,00",
                                      style: TextStyle(
                                        color: yTextColor3,
                                         fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                  
                            ),
                          ),
                        ),
                      ],
                    ),
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
                          
                        
                      
                    
                  
              
           ],
         ),
       ),
             
    );
  }
}

