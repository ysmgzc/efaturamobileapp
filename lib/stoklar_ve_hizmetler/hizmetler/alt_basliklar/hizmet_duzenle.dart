import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/active_switch.dart';
import 'package:flutter/material.dart';


class HizmetDuzenle extends StatefulWidget {
  const HizmetDuzenle({Key? key}) : super(key: key);

  @override
  State<HizmetDuzenle> createState() => _HizmetDuzenleState();
}

class _HizmetDuzenleState extends State<HizmetDuzenle> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<String> items = <String>[
      'Hizmet',
      'Hizmet1',
      'Hizmet2',
      'Hizmet3',
    ];
    List<String> items1 = <String>[
      'Adet',
      'Ay',
      'Bidon',
      'Çift',
      'Cilt',
      'Çuval',
      'Dakika',
      'Desimetreküp',
      'Deste',
      'Düzine',
      'Galon',
      'Gram',
      'Gün',
      'Hafta',
      'Hektar',
      'İnç küp',
      'Karat',
      'Kilogram',
      'Kilometre',
      'Kilovat',
      'Kilovat saat',
      'Koli',
      'Kova',
      'Kutu',
      'Litre (DM³)',
      'Makara',
      'Metre',
      'Metre kare',
      'Metreküp',
      'Metretül',
      'Mililitre (CC)',
      'Milimetre',
      'Milimetre kare',
      'Milimetreküp',
      'Paket',
      'Palet',
      'Rulo',
      'Saat',
      'Saniye',
      'Santilitre',
      'Santimetre',
      'Santimetre kare',
      'Santimetreküp',
      'Sefer',
      'Set',
      'Stere',
      'Takım',
      'Teneke',
      'Ton',
      'Top',
      'Torba',
      'Varil',
      'Vat Saat',
      'Yıl',     
    ];
    List<String> items2 = <String>[
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
    List<String> items3 = <String>[
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
    List<String> items4 = <String>[
      'Uyglanmaz',
      'ÖTV-Petrol ve Doğalgaz Ürülerine İlişkin Özel Tüketim Vergisi',
      'ÖTV-Kolali Gazoz, Alkollü İçecekler ve Tütün Mamüllerine İlişkin Özel Tüketim Vergisi',
      'ÖTV-Dayanıklı Tüketim ve Diğer mallara ilişkin Özel Tüketim Vergisi',
      'ÖTV- Alkollü İçeceklere İlişkin Özel Tüketim Vergisi',
      'Tütün Mamüllerine İlişkin Özel Tüketim Vergisi',
      'ÖTV-Kolali Gazozlara İlişkin Özel Tüketim Vergisi',
      'Özel İetişim Vergisi',
      'ÖTV-Motorlu Taşıtlar',
      'Konaklama Vergisi',
      'Elektrik Tüketim Vergisi',
      '4961 Banka Sigorta Muameleleri Vergisi',
    ];
    return Scaffold(
       appBar: AppBar(
        elevation: 0.0,
    backgroundColor:const Color(0xffD9B26D),
    title:const Text('Hizmet Düzenle'),
    centerTitle: true,
    automaticallyImplyLeading: false, 
      actions: [
     IconButton(
    icon:const Icon(Icons.copy_sharp),
    onPressed: () {},
  ),
  ],
  ),
      body: SingleChildScrollView(
        child: Column(
           children: [
        Container(
          color:const  Color(0xffD9B26D),
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
                    child: Image.asset('assets/icons/drawericon/urunicon.png'),
                  ),
                 
                ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Hizmet Adı', style: TextStyle(color: Colors.white, fontSize: 14)),
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
              title: "TÜR*",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Hizmet",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),
                     
              const Divider(),
              const Text('HİZMET ADI 2', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),
              const Text('HİZMET KODU*', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                hintText: '0000000000000002',
              ),
              const Divider(),
              const Text('KATEGORİ', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),
              CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "BİRİM",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Adet",
              items: items1,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              const Divider(),
              CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "PARA BİRİMİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "TL",
              items: items2,
              menuItemsWidth: screenWidth * 0.9
                  ),
              const Divider(),
              const Text('HİZMET GRUBU', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
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
                      const Text('BİRİM FİYATI(KDV HARİÇ)', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                 // const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('BİRİM FİYATI(KDV DAHİL)', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'ALIŞ FİYATI',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
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
                      const Text('BİRİM FİYATI(KDV HARİÇ)', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                  //const SizedBox(width: 30),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('BİRİM FİYATI(KDV DAHİL)', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                        hintText: '0,00',
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'VERGİLER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(),
             CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "KDV ORANI",
              menuWidth: screenWidth * 0.9,
              selectedValue: "18",
              items: items3,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              const Divider(),
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'TEVKİFAT',
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
                        showDialog: true,
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
              const Divider(),
               CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "EK VERGİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Uygulanmaz",
              items: items4,
              menuItemsWidth: screenWidth * 0.9,
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
              const Divider(),
             const SizedBox(height: 15,)
            ],
          ),
        ),]
        ),
      ),
          bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
          ),
    );

  }
}
