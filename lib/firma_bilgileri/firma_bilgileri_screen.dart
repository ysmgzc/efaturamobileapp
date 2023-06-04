
import 'package:efaturamobileapp/bottom_app_bar_desing.dart';
import 'package:efaturamobileapp/firma_bilgileri/alt_menuleri/ayarlar.dart';
import 'package:efaturamobileapp/firma_bilgileri/alt_menuleri/edevlet_bilgileri.dart';
import 'package:efaturamobileapp/firma_bilgileri/alt_menuleri/fatura_numaralari.dart';
import 'package:efaturamobileapp/firma_bilgileri/alt_menuleri/kullanici_sozlesmesi.dart';
import 'package:efaturamobileapp/ozel_dugme_text_buton.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:efaturamobileapp/constants.dart';
import '../../custom_pop_menu.dart';
import '../person_image_border.dart';
import 'alt_menuleri/gib_earsiv.dart';
import 'alt_menuleri/kayitli_kullanicilar.dart';
import 'alt_menuleri/kullanici_bilgilerim.dart';
import 'alt_menuleri/uygulama_ayarlari.dart';
enum MusteriTipi{ kurumsal, bireysel }

class FirmaBilgileriScreen extends StatefulWidget {
  const FirmaBilgileriScreen({Key? key}) : super(key: key);

  @override
  State<FirmaBilgileriScreen> createState() => _FirmaBilgileriScreenState();
}

class _FirmaBilgileriScreenState extends State<FirmaBilgileriScreen> {
   MusteriTipi _seciliMusteriTipi=MusteriTipi.kurumsal;
   @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    List<String> items1 = <String>[
      'Türkiye',
      'Almanya',
     
    ];
 
    return Scaffold(
       appBar: AppBar(
        elevation: 0.0, 
    backgroundColor:const Color(0xffAC8BB6),
    title:const Text('Firma Bilgileri'),automaticallyImplyLeading: false, 
    centerTitle: true,
  ),
      body: SingleChildScrollView(
        child: Column(
           children: [
        Container(
          color:const  Color(0xffAC8BB6),
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
                    child: Image.asset('assets/icons/drawericon/firmabilgileriicon.png'),
                  ),
              ),
              Container(
                alignment: Alignment.topCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Şirket Adı*', style: TextStyle(color: Colors.white, fontSize: 14)),
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
          const Text("TÜR*", style: TextStyle(color: yTextColor)),
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
            const Text('AD SOYAD', style: TextStyle(color: yTextColor, fontSize: 14)),
           const SizedBox(height: 8),
            TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
          ] 
          
          
          else if (_seciliMusteriTipi == MusteriTipi.bireysel) ...[
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
           const Text('YETKİLİ E-POSTA', style: TextStyle(color: yTextColor, fontSize: 14)),
           const SizedBox(height: 8),
            TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
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
               const Text('ADRES*', style: TextStyle(color: yTextColor,fontSize: 14)),
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
              title: "ÜLKE*",
              menuWidth: screenWidth * 0.9,
              selectedValue: "Türkiye",
              items: items1,
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
              const Text('FAKS', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
    const Divider(),
              const Text('WEB SİTESİ', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
            const Divider(),
              const SizedBox(height: 8),               
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'TİCARİ BİLGİLER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text('VERGİ NO*', style: TextStyle(color: yTextColor, fontSize: 14)),
              const SizedBox(height: 8),
              TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
              const Divider(),
                const Text('VERGİ DAİRESİ*', style: TextStyle(color: yTextColor,fontSize: 14)),
              const SizedBox(height: 8),
             TextFieldDecoration(screenWidth: screenWidth, screenHeight: screenHeight),
 const SizedBox(height: 20,),
        Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    PersonImageBorder(  
                      screenHeight: screenHeight, 
                      screenWidth: screenWidth,
                      text: "Şirket Logosu",
                      assetPath: 'assets/icons/cameraicon.png',
                      ),

                      PersonImageBorder(  
                        screenHeight: screenHeight, 
                        screenWidth: screenWidth,
                        text: "İmza",
                        assetPath: 'assets/icons/cameraicon.png',
                        ),
                ],
              ),]),
            const SizedBox(height: 20,),
 
Container(
  color: Colors.white,
  width: screenWidth * 0.9,
  height: screenHeight * 0.07,
  child: Center(
    child: GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const EDevletBilgileriScreen()));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "E-DEVLET BİLGİLERİ",
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
            builder: (context) => const GibEArsivScreen()));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "GİB E-ARŞİV PORTAL BİLGİLERİ",
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
          builder: (context) => const FaturaNumaralariScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "FATURA NUMARALARI",
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
          builder: (context) => const KullaniciBilgileriScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "KULLANICI BİLGİLERİM",
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
          builder: (context) => const AyarlarScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "AYARLAR",
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
          builder: (context) => const UygulamaAyarlariScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "UYGULAMA AYARLARI",
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
          builder: (context) => const KayitliKullanicilarScreen(),
        ));
      },
      child:const Row(
        children: [
          Expanded(
            child: Text(
              "KAYITLI KULLANICILAR",
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
             const SizedBox(height: 15,),
             IntrinsicHeight(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      TextButton(
        onPressed: () {
        },
        child:const Text('Abonelik Bilgileri',style: TextStyle(fontSize: 14,color: Colors.black),),
      ),
     const VerticalDivider(
        color: Colors.grey,
        thickness: 1,
      ),
      TextButton(
        onPressed: () {
           Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const KullaniciSozlesmesiScreen(),
        ));
        },
        child:const Text('Kullanıcı Sözleşmesi', style: TextStyle(fontSize: 14,color: Colors.black),),
      ),
    ],
  ),
),
 const SizedBox(height: 15,),
 const Divider(),
             const SizedBox(height: 15,),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'MTXSOFT...',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
const SizedBox(height: 15,),
 const Divider(),
 const SizedBox(height: 15,),
            ],
          ),
        ),]
        ),
      ),
          bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        backgroundColor:const Color(0xffAC8BB6),
          ),
    );

  }
}


