
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/bottom_app_bar_desing_save.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/active_switch.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../custom_pop_menu.dart';
class KasaEkle extends StatefulWidget {
  const KasaEkle({Key? key}) : super(key: key);

  @override
  State<KasaEkle> createState() => _KasaEkleState();
}

class _KasaEkleState extends State<KasaEkle> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
     TextEditingController dateInput = TextEditingController();
    List<String> items = <String>[
      'TL',
      'EUR',
      'GBP',
      'CHF',
      'JPY',
      'AZM',
      'BGN',
      'CNY',
      'USD',
      'PLN',
      'RUB',
      'SGD',
      'DZD',
      'XAU',
      'UZS',
      'MKD',
      'KGS',
    ];
    List<String> items2 = <String>[
      '(+) Bakiye',
      '(-) Bakiye',
     
    ];
    return Scaffold(
       appBar: AppBar(
        elevation: 0.0,
    backgroundColor:const Color(0xffA1CFC2),
    title:const Text('Kasa Ekle'),
    automaticallyImplyLeading: false, 
    centerTitle: true,
  ),
      body: SingleChildScrollView(
        child: Column(
           children: [
        Container(
          color:const  Color(0xffA1CFC2),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin:const EdgeInsets.all(10.0),
                padding:const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(95.0),
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0, 
                    child: Image.asset('assets/icons/drawericon/kasaicon.png'),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Kasa Adı', style: TextStyle(color: Colors.white, fontSize: 14)),
                    const SizedBox(height: 8),
                    SizedBox(
                      width: screenWidth * 0.8,
                      height: screenHeight * 0.07,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: '',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
            ],
          ),
        ), Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10),
                CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "PARA BİRİMİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "TL",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),
           
              const Divider(),
              const SizedBox(height: 8),
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('AÇILIŞ BAKİYESİ', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                   
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        CustomPopMenuWidget(
              width: screenWidth * 0.4,
              height: screenHeight * 0.07,
              title: "BAKİYE DURUMU",
              menuWidth: screenWidth * 0.4,
              selectedValue: "(+) Bakiye",
              items: items2,
              menuItemsWidth: screenWidth * 0.2,
                  ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
                Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const Text('AÇILIŞ BAKİYESİ TARİHİ', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        Align(
          alignment: Alignment.topLeft,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(
                colors: [
                  Colors.grey.shade200,
                  Colors.grey.shade100,
                  Colors.grey.shade50,
                  Colors.white70,
                ],
              ),
            ),
            child: GestureDetector(
            onTap: () async {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime.now(),
              );
      
              if (pickedDate != null) {
                setState(() {
                  dateInput.text = DateFormat('dd/MM/yyyy').format(pickedDate);
                });
              }
            },
            child: SizedBox(
            width: screenWidth * 0.9,
                  height: screenHeight * 0.07,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  dateInput.text.isNotEmpty ? dateInput.text : DateFormat('  dd/MM/yyyy').format(DateTime.now()),
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            ),
            
          ),
      
          ),
        ),
          ],
        ),
      ),
        const Divider(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Aktif',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: ActiveSwitch(
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),]
        ),
      ),
          bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor:const Color(0xffA1CFC2),
          ),
    );

  }
}
