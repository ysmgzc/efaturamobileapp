import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:intl/intl.dart';
import '../../../bottom_app_bar_desing.dart';
import '../../../custom_pop_menu.dart';
import '../../../person_image_border.dart';
import '../../nakit_durumu.dart';


class CekGirisiEkle extends StatefulWidget {
  const CekGirisiEkle({Key? key}) : super(key: key);

  @override
  State<CekGirisiEkle> createState() => _CekGirisiEkleState();

}

class _CekGirisiEkleState extends State<CekGirisiEkle> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue1;
  List<String> items1 = <String>[
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
 String? selectedValue2;
    List<String> items2 = <String>[
      '(+) Bakiye',
      '(-) Bakiye',
     
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
        automaticallyImplyLeading: false, 
        title: const Text(
          'Çek Girişi',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                    PersonImageBorder(  
                      screenHeight: screenHeight, 
                      screenWidth: screenWidth, 
                      text: "Ön",
                      assetPath: 'assets/icons/cameraicon.png',
                      ),

                      PersonImageBorder(  
                        screenHeight: screenHeight, 
                        screenWidth: screenWidth, 
                        text: "Arka",
                        assetPath: 'assets/icons/cameraicon.png',
                        ),
                ],
              ),
            const SizedBox(height: 20,),
      Container(
         alignment: Alignment.topLeft,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
           children: [
             const Text('MÜŞTERİ/TEDARİKÇİ ADI*', style: TextStyle(color: yTextColor,fontSize: 14)),
             const SizedBox(height: 8),
            TextFieldDecoration(
                   screenWidth: screenWidth, 
                   screenHeight: screenHeight,
                   ),
           ],
         ),
       ),
         const Divider(),
       Row(
         children: [
           Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('TUTAR', style: TextStyle(color: yTextColor, fontSize: 14)),
                          const SizedBox(height: 8),
                          TextFieldDecoration(
                            screenWidth: screenWidth,
                            screenHeight: screenHeight,
                            widthFactor: 0.6,
                            hintText: '0,00',
                          ),
                        ],
                      ),
                       CustomPopMenuWidget(
                       width: screenWidth * 0.3,
                       height: screenHeight * 0.07,
                       title: "PARA BİRİMİ",
                       menuWidth: screenWidth * 0.3,
                       selectedValue: "TL",
                       items: items1,
                       menuItemsWidth: screenWidth * 0.2, 
                           ),
         ],
       ),
       
const Divider(),

         Container(
         alignment: Alignment.topLeft,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start, 
           children: [
             const Text('ÇEK NUMARASI', style: TextStyle(color: yTextColor,fontSize: 14)),
             const SizedBox(height: 8),
            TextFieldDecoration(
                   screenWidth: screenWidth, 
                   screenHeight: screenHeight,
                   ),
           ],
         ),
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
        const Text('TARİHİ', style: TextStyle(color: yTextColor,fontSize: 14)),
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
            width: screenWidth * 0.4,
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
      Container(
        alignment: Alignment.topLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        const Text('VADE TARİHİ', style: TextStyle(color: yTextColor,fontSize: 14)),
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
            width: screenWidth * 0.4,
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
                
              ],
            ),
         const Divider(),
           const SizedBox(height: 8),
      const Text('İLİŞKİLİ  FATURALAR / SİPARİŞLER', style: TextStyle(color: yTextColor,fontSize: 14)),
      const SizedBox(height: 8),
                Center(
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
                  child: Container(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const NakitDurumuScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shadowColor:
                            MaterialStateProperty.all(Colors.transparent),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide.none,
                          ),
                        ),
                      ),
                              child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Container(), 
           const Icon(
              Icons.arrow_right, 
              color: Colors.grey, 
            ),
          ],
        ),
                    ),
                  ),
                ),
              ),
                 
               const Divider(),
             
                  const Text('AÇIKLAMA', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                heightFactor: 0.14, 
                ),
                
        const Divider(),
             
            ],
          ),
        ),
      ),
         bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        backgroundColor:const Color(0xffA1CFC2),
          ),
    );
  }
}

