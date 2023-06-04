
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../urunekleborder.dart';


class StokCikisiEkle extends StatefulWidget {
  const StokCikisiEkle({Key? key}) : super(key: key);

  @override
  State<StokCikisiEkle> createState() => _StokCikisiEkleState();

}

class _StokCikisiEkleState extends State<StokCikisiEkle> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;
  List<String> items = <String>[
      'Fire Çıkışı',
      'Sarf Çıkış',
      'Sayım Çıkış',
];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
     appBar: AppBar(
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          'Stok Çıkışı',
          style: TextStyle(color: Colors.black),
        ),
      ),

      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
                 CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "HAREKET TİPİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Fire Çıkış",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),
            
             const Divider(),
               const SizedBox(height: 8),
            Row(
              children: [
          Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
        const Text('BELGE NO', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                widthFactor: 0.42, 
                ),
          ],
        ),
      ),
                    const SizedBox(height: 2),
                 Container(
        alignment: Alignment.topLeft,
        child: Padding(
          padding:const EdgeInsets.only(left: 8.0),
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('TARİH', style: TextStyle(color: yTextColor,fontSize: 14)),
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
              child: Container(
                width: screenWidth * 0.40,
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
      ), ],
               ), 
          const Divider(),     
      Container(
         alignment: Alignment.topLeft,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
           children: [
             const Text('KATEGORİ', style: TextStyle(color: yTextColor,fontSize: 14)),
             const SizedBox(height: 8),
            TextFieldDecoration(
                   screenWidth: screenWidth, 
                   screenHeight: screenHeight,
                   ),
           ],
         ),
       ),
      const SizedBox(height: 8),
     const Divider(),
     const SizedBox(height: 8),
      Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
        const Text('AÇIKLAMA', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                heightFactor: 0.14, 
                ),
          ],
        ),
      ),
  const SizedBox(height: 8),
     const Divider(),
      UrunEkleBorder(
   screenHeight: screenHeight, 
   screenWidth: screenWidth, 
   route: const UrunlerScreen(), 
   text: "Ürünler",
 ),
       const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
