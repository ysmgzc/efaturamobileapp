import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/para/nakit_durumu.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:intl/intl.dart';


class MusterilerVeTedarikcilerOdemeEkle extends StatefulWidget {
  const MusterilerVeTedarikcilerOdemeEkle({Key? key}) : super(key: key);

  @override
  State<MusterilerVeTedarikcilerOdemeEkle> createState() => _MusterilerVeTedarikcilerOdemeEkleState();

}

class _MusterilerVeTedarikcilerOdemeEkleState extends State<MusterilerVeTedarikcilerOdemeEkle> {
  TextEditingController dateInput = TextEditingController();
    List<String> items = <String>[
     'Nakit',
     'Çek',
    ];
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
          'Ödeme Makbuzu',
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
           
            const SizedBox(height: 10,),
      const Text('TEDARİKÇİ*', style: TextStyle(color: yTextColor,fontSize: 14)),
      const SizedBox(height: 8),
         TextFieldDecoration(
            screenWidth: screenWidth, 
            screenHeight: screenHeight,
            ),
          const Divider(),
           const SizedBox(height: 8),
      const Text('KASA / BANKA ADI*', style: TextStyle(color: yTextColor,fontSize: 14)),
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
                  child: SizedBox(
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
                      child: Container(),
                    ),
                  ),
                ),
              ),
                const Divider(),
           const SizedBox(height: 8),
      const Text('İLİŞKİLİ FATURALAR / SİPARİŞLER', style: TextStyle(color: yTextColor,fontSize: 14)),
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
                  child: SizedBox(
                    width: screenWidth * 0.9,
                    height: screenHeight * 0.07,
                    child: ElevatedButton(
                      onPressed: () {
                        
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
            const SizedBox(height: 8),  
            Row(
              children: [
                Container(
        alignment: Alignment.topLeft,
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
              ],
            ),
                const Divider(),
           const SizedBox(height: 8),
      const Text('MAKBUZ / BELGE NO', style: TextStyle(color: yTextColor,fontSize: 14)),
      const SizedBox(height: 8),
         TextFieldDecoration(
            screenWidth: screenWidth, 
            screenHeight: screenHeight,
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
        backgroundColor: Colors.blue,
          ),
    );
  }
}

