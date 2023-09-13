
import 'package:flutter/material.dart';
import '../../../active_switch.dart';
import '../../../bottom_app_bar_design.dart';
import '../../../constants.dart';
import '../../../custom_pop_menu.dart';
import '../../../text_field_decoration.dart';

class TekstilHammaddeEkle extends StatefulWidget {
  const TekstilHammaddeEkle({Key? key}) : super(key: key);

  @override
  State<TekstilHammaddeEkle> createState() => _TekstilHammaddeEkleState();

}

class _TekstilHammaddeEkleState extends State<TekstilHammaddeEkle> {
 
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
        List<String> items = <String>[
      'Kilogram',
      'Gram',
      'Ton',
      'Karat',
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

     List<String> items2 = <String>[
      '18',
      '8',
      '1',
      '0',
      '19',
      '16',
      '10',
      '5',
      '9',
      '4',
      '6',
      '13',
      '20',
      '15',
    ];
         List<String> items3 = <String>[
      'YOK',
      'VAR',
    ];
    return Scaffold(
     appBar: AppBar(
      iconTheme:const IconThemeData(color: Colors.black),
        elevation: 0,
        shadowColor: Colors.transparent,
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Tekstil Hammadde',
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
              title: "BİRİM*",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Kilogram",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),
                   const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'SATIŞ FİYATI',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Row(
         children: [
           Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('BİRİM FİYATI(KDV DAHİL)', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                 CustomPopMenuWidget(
              width: screenWidth * 0.9,
              title: "KDV ORANI",
              menuWidth: screenWidth * 0.9,
              selectedValue: "18",
              items: items2,
              menuItemsWidth: screenWidth * 0.9,
                  ),
                   const Divider(),
               const SizedBox(height: 8),
            Container(
        alignment: Alignment.topLeft,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
        const Text('MİKTAR', style: TextStyle(color: yTextColor,fontSize: 14)),
        const SizedBox(height: 8),
        TextFieldDecoration(
                  screenWidth: screenWidth, 
                  screenHeight: screenHeight,
                  widthFactor: 0.42, 
                  ),
            ],
        ),
      ), 
       const Divider(),
               const SizedBox(height: 15),
       Container(
                alignment: Alignment.center,
                child: const Text(
                  'İNDİRİM BİLGİLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
            CustomPopMenuWidget(
              width: screenWidth * 0.45,
              title: "İNDİRİM TİPİ",
              menuWidth: screenWidth * 0.45,
              selectedValue: "YOK",
              items: items3,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              SizedBox(
                width: screenWidth * 0.45,  
                child:const Divider(),
              ),
                  const SizedBox(height: 15),
                   Container(
                alignment: Alignment.center,
                child: const Text(
                  'AÇIKLAMA',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 15),
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
      const Divider(),
       const SizedBox(height: 15),
        Container(
                alignment: Alignment.center,
                child: const Text(
                  'E-DEVLET BİLGİLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
               const SizedBox(height: 15),
            Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        const Text(
                         'KDV Muafiyeti',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ],
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
const Divider(),
       const SizedBox(height: 18),
            ],
          ),
        ),
      ),
       bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor:const Color(0xffD9B26D),
        saveButtonText: "+EKLE",
          ),
    );
  }
}
