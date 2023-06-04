import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
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
                            padding: const EdgeInsets.only(left: 20,right: 20),
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
                     Column(
                  children: [
                  const  SizedBox(
                      height: 20,
                    ), 
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20,right: 20),
                        child: Container(
                          alignment: Alignment.center,
                          height: MediaQuery.of(context).size.height * 0.16,
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
                                      "KASA TOPLAMI",
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
                                      "Merkez Kasa",
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
           ],
         ),
       ),
             
    );
  }
}

