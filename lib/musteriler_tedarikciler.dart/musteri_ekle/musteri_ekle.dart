import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/banka_hesabi_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/teslimat_adresi_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/yetkili_kisi_ekle.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/ozel_dugme_text_buton.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:intl/intl.dart';

import '../../custom_pop_menu.dart';
enum MusteriTipi{ kurumsal, bireysel }

class MusteriEkleScreen extends StatefulWidget {
  const MusteriEkleScreen({Key? key}) : super(key: key);

  @override
  State<MusteriEkleScreen> createState() => _MusteriEkleScreenState();
}

class _MusteriEkleScreenState extends State<MusteriEkleScreen> {
   MusteriTipi _seciliMusteriTipi=MusteriTipi.kurumsal;
   @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    TextEditingController dateInput = TextEditingController();

    List<String> items = <String>[
      'Müşteri / Tedarikçi',
      'Müşteri',
      'Tedarikçi',
      'Personel',
    ];
    List<String> items1 = <String>[
      'Türkiye',
      'Almanya',
     
    ];
    List<String> items2 = <String>[
      'Lütfen seçin...',
      'Ankara',
      'İstanbul',
     
    ];
    List<String> items3 = <String>[
      'Lütfen seçin...',
      'Beypazarı',
      'Çankaya',
     
    ];
    List<String> items5 = <String>[
      'Borcu Var',
      'Alacağı Var',
    ];
    List<String> items6 = <String>[
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
 
    return Scaffold(
       appBar: AppBar(
        elevation: 0.0, 
    backgroundColor:const Color(0xff8FAD4B),
    title:const Text('Müşteri Ekle'),automaticallyImplyLeading: false, 
    centerTitle: true,
  ),
      body: SingleChildScrollView(
        child: Column(
           children: [
        Container(
          color:const  Color(0xff8FAD4B),
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
                 child: SizedBox(
                    width: 50.0,
                    height: 50.0, 
                    child: Image.asset('assets/icons/drawericon/musteritedarikciicon.png'),
                  ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Müşteri Unvanı', style: TextStyle(color: Colors.white, fontSize: 14)),
                    const SizedBox(height: 8),
                    Container(
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
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8),
          const Text("MÜŞTERİ TİPİ", style: TextStyle(color: yTextColor)),
          const SizedBox(height: 8),
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: RadioListTile<MusteriTipi>(
                      title: const Text("Kurumsal"),
                      value: MusteriTipi.kurumsal,
                      groupValue: _seciliMusteriTipi,
                      onChanged: (MusteriTipi? value) {
                        if (value != null) {
                          setState(() {
                            _seciliMusteriTipi = value;
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: RadioListTile<MusteriTipi>(
                      title: const Text("Bireysel"),
                      value: MusteriTipi.bireysel,
                      groupValue: _seciliMusteriTipi,
                      onChanged: (MusteriTipi? value) {
                        if (value != null) {
                          setState(() {
                            _seciliMusteriTipi = value;
                          });
                        }
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          if (_seciliMusteriTipi == MusteriTipi.kurumsal) ...[
            const Text('VERGİ NO', style: TextStyle(color: yTextColor, fontSize: 14)),
           const SizedBox(height: 8),
            TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
           const Divider(),
           const Text('KISA UNVAN', style: TextStyle(color: yTextColor, fontSize: 14)),
           const SizedBox(height: 8),
            TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
           const SizedBox(height: 8),  
          ] 
          
          
          else if (_seciliMusteriTipi == MusteriTipi.bireysel) ...[
           const Text('TCKN', style: TextStyle(color: yTextColor, fontSize: 14)),
           const SizedBox(height: 8),
            TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
          const  Divider(),
          Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('AD', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                      ),
                    ],
                  ),
                  const SizedBox(width: 30),
                   
                  Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                     const Text('SOYAD', style: TextStyle(color: yTextColor, fontSize: 14)),
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        widthFactor: 0.40,
                      ),
                    ],
                  ),
                ],
              ),
          
          ],
        ],
      ),
      const Divider(),
               CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "TÜR*",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Müşteri / Tedarikçi",
              items: items,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              const Divider(),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'ADRES BİLGİLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
               const Text('ADRES', style: TextStyle(color: yTextColor,fontSize: 14)),
               const SizedBox(height: 8),
               TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                heightFactor: 0.14, 
                ),
              const Divider(),
              const Text('POSTA KODU', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),
                CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "ÜLKE",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Türkiye",
              items: items1,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              const Divider(),

              
                          Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         CustomPopMenuWidget(
              width: screenWidth * 0.4,
              height: screenHeight * 0.07,
              title: "İL",
              menuWidth: screenWidth * 0.35,
              selectedValue: "Lütfen Seçin...",
              items: items2,
              menuItemsWidth: screenWidth * 0.2,
                  ),
                    ],
                  ),
                  SizedBox( width:screenWidth * 0.1,),
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                         CustomPopMenuWidget(
              width: screenWidth * 0.4,
              height: screenHeight * 0.07,
              title: "İLÇE",
              menuWidth: screenWidth * 0.35,
              selectedValue: "Lütfen Seçin",
              items: items3,
              menuItemsWidth: screenWidth * 0.2,
                  ),
                    ],
                  ),
                ],
              ),
 const Divider(),
                const Text('VERGİ DAİRESİ', style: TextStyle(color: yTextColor,fontSize: 14)),
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
                                builder: (context) => const MusterilerTedarikcilerScreen()));
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
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'BAKİYE BİLGİSİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
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
              selectedValue: "Borcu Var",
              items: items5,
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
            child: Container(
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
              const SizedBox(height: 8),
             CustomPopMenuWidget(
              width: screenWidth * 0.9,
              height: screenHeight * 0.07,
              title: "PARA BİRİMİ",
              menuWidth: screenWidth * 0.9,
              selectedValue: "TL",
              items: items6,
              menuItemsWidth: screenWidth * 0.9,
                  ),
              const Divider(),
              const SizedBox(height: 8),               
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'TELEFON NUMARALARI',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          OzelDugme(
            metin: 'Telefon Numarası Ekle',
            baslik: 'Telefon Numarası',
            aciklama: 'Lütfen telefon numarası girin',
            hintText: "örn: 05123456789",
            keyboardType: TextInputType.phone,
            onEkle: (String telefonNumarasi) {
              //print('05123456789');
            },
          ),
  const Divider(),
              const SizedBox(height: 8),               
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'E-POSTA ADRESLERİ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
          OzelDugme(
            metin: 'e-Posta Ekle',
            baslik: 'e-Posta',
            aciklama: 'Lütfen e-posta girin',
            hintText: "örn: mail@isbasi.com",
            keyboardType: TextInputType.emailAddress,
            onEkle: (String ePosta) {
             // print('mail@isbasi.com: $ePosta');
            },
          ),
 const Divider(),
              
 const Text('WEB SİTESİ', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),

 const Text('MÜŞTERİ KODU', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(
                screenWidth: screenWidth, 
                screenHeight: screenHeight,
                 hintText: '0000000000000004',
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
 const Text('KATEGORİ', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),


 
Container(
  color: Colors.white,
  width: screenWidth * 0.9,
  height: screenHeight * 0.07,
  child: Center(
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const YetkiliKisiEkleScreen()));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "YETKİLİ KİŞİLER",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ),
          Icon(Icons.navigate_next, color: kIconColor2),
          SizedBox(width: 16.0),
        ],
      ),
    ),
  ),
),const Divider(),
Container(
  color: Colors.white,
  width: screenWidth * 0.9,
  height: screenHeight * 0.07,
  child: Center(
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const TeslimatAdresiEkleScreen()));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "TESLİMAT ADRESLERİ",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ),
          Icon(Icons.navigate_next, color: kIconColor2),
          SizedBox(width: 16.0),
        ],
      ),
    ),
  ),
),
const Divider(),
Container(
  color: Colors.white,
  width: screenWidth * 0.9,
  height: screenHeight * 0.07,
  child: Center(
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const BankaHesabiEkleScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "BANKALAR",
              style: TextStyle(fontSize: 14),
              textAlign: TextAlign.start,
            ),
          ),
          Icon(Icons.navigate_next, color: kIconColor2),
          SizedBox(width: 16.0),
        ],
      ),
    ),
  ),
),

              const Divider(),
               Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                     'KDV Uygulanmaz',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
                Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                     'Tevkifat Uygulanmaz',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
                Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                     'Ek Vergi Uygulanmaz',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Aktif',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
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
        backgroundColor:const Color(0xff8FAD4B),
          ),
    );

  }
}
