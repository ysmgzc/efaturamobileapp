import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/detayli_arama_screen.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';

class MasrafOzetiDetayliArama extends StatefulWidget {
  const MasrafOzetiDetayliArama({super.key});

  @override
  State<MasrafOzetiDetayliArama> createState() => _MasrafOzetiDetayliAramaState();
}

class _MasrafOzetiDetayliAramaState extends State<MasrafOzetiDetayliArama> {
  bool value = false;
    TextEditingController dateInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
     double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
         iconTheme:const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
         elevation: 0,
        centerTitle: true,
        title:const Text(
          'Detaylı Arama',style: TextStyle(color: Colors.black),
        ),
      ),
    
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(top: 10),
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.05,
            vertical: screenHeight * 0.02,
          ),
        child:Column(children: [
//------------------------"İşlem Tipi"------------------------------------------
               DetayliAramaWidget(
                altMetin:"Tümü",
              metin: "İşlem Tipi",
               onTap: () {
                    showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "İşlem Tipi",
      checkboxTexts: [
        "Alış Faturası",
        "Giderler",
      ],
    );
  },
);  
      },  ),
//---------------------Ödeme Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Ödeme Durumu",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Ödeme Durumu",
      checkboxTexts: [
        "Ödendi",
        "Ödenecek",
      ],
    );
  },
); }, ),
//---------------------Vade Tarihi-------------------------------------------------
          DetayliAramaWidget(
            metin: "Vade Tarihi",
            onTap: () {
              showDialog(
            context: context,
            builder: (BuildContext context) {
              return const CustomDatePickerDialog(
                titleText: 'Tarih',
                startText: 'Başlangıç Tarihini Seç',
                endText: 'Bitiş Tarihini Seç',
              );
            },
          );
            },
            altMetin:"Tümü",
          ),
//---------------------Tedarikçi Sec-------------------------------------------------
          DetayliAramaWidget(
            metin: "Tedarikçi Seç",
            altMetin:"Tümü",
            onTap: () {
               Navigator.push(
          context,
          MaterialPageRoute(builder: (context) =>  MusterilerTedarikcilerScreen(secim: 1,)),
        );
            },
            
          ),
//---------------------Hizmet Grubu-----------------------------------------------------------
          DetayliAramaWidget(
            metin: "Hizmet Grubu",
            onTap: () {},
            altMetin:"Tümü",
          ),
//---------------------Ödeme Durumu----------------------------------------------------------
       DetayliAramaWidget(
            metin: "Hizmet Adı",
            altMetin:"Tümü",
           onTap: () {
       showDialog(
  context: context,
  builder: (BuildContext context) {
    return const ShowDialogCheckBox(
      dialogTitle: "Hizmet Adı",
      checkboxTexts: [
        "Brüt Ücretler",
        "Danışmanlık Giderleri",
        "Demirbaş ve Bakım\nOnarım Giderleri",
        "Diğer Giderler",
        "Eğitim Giderleri",
        "Elektrik Giderleri",
        "Haberleşme Giderleri",
        "Hesaplama Hizmeti",
        "Isınma Giderleri",
        "Kira Giderleri",
        "Kırtasiye Giderleri",
        "Maaş Ücreti",
        "Nakliye Giderleri",
        "Prim Ödemesi",
        "Sağlık Giderleri",
        "Su Giderleri",
        "Taşıt Bakım ve\nOnarım Giderleri",
        "Temizlik Giderleri",
        "Yemek Giderleri",
        "Yol, OGS, HGS,\nUlaşım Giderleri",
      ],
    );
  },
); }, ),
//---------------------Kategori--------------------------------------------------------------
          DetayliAramaWidget(
            metin: "Kategori",
            altMetin:"Tümü",
            onTap: () { showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title:const Text('Kategori'),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                      const SizedBox(height: 8),
                      TextFieldDecoration(
                        screenWidth: screenWidth,
                        screenHeight: screenHeight,
                        heightFactor: 0.07,
                      ),
              const  Divider(),
                
              ],
            ),
          ),
           actions: [
        TextButton(
          child:const Text('Vazgeç'),
          onPressed: () {
            setState(() {
              dateInput.text = '';
            });
          },
        ),
        TextButton(
          child:const Text('Kaydet'),
          onPressed: () {
            Navigator.of(context).pop(); 
        },
        ),
      ],
        );
      },
    );
  },
          ),
          
        ],)
           
        ),
      ),
    bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonText: "SONUÇLARI GÖSTER",
        saveButtonBackgroundColor: Colors.blue,
          ),
    );
  }

 
}