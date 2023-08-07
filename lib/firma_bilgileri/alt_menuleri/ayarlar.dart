import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/para/banka_hesaplari/banka_hesaplari.dart';
import 'package:flutter/material.dart';
import '../../custom_pop_menu.dart';
import '../../text_field_decoration.dart';

class AyarlarScreen extends StatefulWidget {
  const AyarlarScreen({Key? key}) : super(key: key);

  @override
  State<AyarlarScreen> createState() => _AyarlarScreenState();
}

class _AyarlarScreenState extends State<AyarlarScreen> {
  @override
  Widget build(BuildContext context) {
       double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
      List<String> items = <String>[
      'Satır Bazlı, Detaylı Fiş Okuma',
      'Dip Toplam Bazlı Fiş Okuma',
    ];
    List<String> items1 = <String>[
      'Destek ekibi verilerinizi görebiliyor',
      'Destek ekibinin firma verilerinize erişimi yok',
    ];
    return Scaffold(
      appBar: AppBar(
        iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false, 
         elevation: 0,
        centerTitle: true,
        title: const Text(
          'Ayarlar', style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
         padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.01,
          ),
          color: Colors.white,
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
              const Text('ÖNTANIMLI AÇIKLAMA', style: TextStyle(color: yTextColor,fontSize: 14)),
               const SizedBox(height: 8),
               TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                heightFactor: 0.14, 
                ),
              const Divider(),
              const SizedBox(height: 8),
              const Text('ÖNTANIMLI BANKA HESABI', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                                builder: (context) => const BankaHesaplariScreen()));
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
                CustomPopMenuWidget(
              width: screenWidth * 0.9,
              title: "FİŞ OKUMA YÖNTEMİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Satır Bazlı, Detaylı Fiş Okuma",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),     
 const Divider(),
 const SizedBox(height: 8),
   CustomPopMenuWidget(
              width: screenWidth * 0.9,
              title: "ERİŞİM İZNİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Destek ekibinin firma verilerinize erişimi yok",
              items: items1,
              menuItemsWidth: screenWidth * 0.9,
                  ), 
                   const Divider(),
          ],
        ),
      ),
       bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor:const Color(0xffAC8BB6),
          ),
    );
  }
}
