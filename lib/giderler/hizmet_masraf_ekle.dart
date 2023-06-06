import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmet_ekle.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:efaturamobileapp/toplam_tutar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../custom_pop_menu.dart';
import '../kamera_showdialog_widget.dart';
import '../urunekleborder.dart';


enum OdemeDurumu { odendi, odenecek }
enum Indirim { tutar, oran }

class HizmetMasrafEkle extends StatefulWidget {
  const HizmetMasrafEkle({Key? key}) : super(key: key);

  @override
  State<HizmetMasrafEkle> createState() => _HizmetMasrafEkleState();
}

class _HizmetMasrafEkleState extends State<HizmetMasrafEkle> {
  TextEditingController dateInput = TextEditingController();
      Indirim? _seciliIndirim = Indirim.tutar;
    final _textFieldController1 = TextEditingController();
    final _textFieldController2 = TextEditingController();
  OdemeDurumu? _seciliOdemeDurumu;
  String? selectedValue;
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
        leading: IconButton(
          icon: const Icon(
            Icons.camera_alt,
            color: Colors.black,
          ),
          onPressed: () {
            kameraShowDialogWidget(context);
          },
        ),
        title: const Text(
          'Hizmet & Masraf',
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
              const Text('MAL/HİZMET VEREN', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const MusterilerTedarikcilerScreen()));
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.transparent),
                        shadowColor: MaterialStateProperty.all(Colors.transparent),
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
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('FİŞ & FATURA NO', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('FİŞ & FATURA TARİHİ', style: TextStyle(color: yTextColor, fontSize: 14)),
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
                                  width: screenWidth * 0.40,
                                  height: screenHeight * 0.07,
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      dateInput.text.isNotEmpty
                                          ? dateInput.text
                                          : DateFormat('  dd/MM/yyyy').format(DateTime.now()),
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
                  ),
                ],
              ),
              const Divider(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 8),
                  const Text("Ödeme Durumu", style: TextStyle(color: yTextColor)),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Expanded(
                        child: RadioListTile<OdemeDurumu>(
                          title: const Text("Ödendi"),
                          value: OdemeDurumu.odendi,
                          groupValue: _seciliOdemeDurumu,
                          onChanged: (OdemeDurumu? value) {
                            if (value != null) {
                              setState(() {
                                _seciliOdemeDurumu = value;
                              });
                            }
                          },
                        ),
                      ),
                      Expanded(
                        child: RadioListTile<OdemeDurumu>(
                          title: const Text("Ödenecek"),
                          value: OdemeDurumu.odenecek,
                          groupValue: _seciliOdemeDurumu,
                          onChanged: (OdemeDurumu? value) {
                            if (value != null) {
                              setState(() {
                                _seciliOdemeDurumu = value;
                              });
                            }
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('ÖDEME VADESİ', style: TextStyle(color: yTextColor, fontSize: 14)),
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
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('AÇIKLAMA', style: TextStyle(color: yTextColor, fontSize: 14)),
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
              const SizedBox(height: 8),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  UrunEkleBorder(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    route: const HizmetEkle(),
                    text: "Hizmet Ekle",
                    width: 0.7,
                  ),
                  const SizedBox(width: 15),
                  SizedBox(
                    width: screenWidth * 0.1,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt),
                      onPressed: () {
                         kameraShowDialogWidget(context);
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    alignment: Alignment.topLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('KATEGORİ', style: TextStyle(color: yTextColor, fontSize: 14)),
                        const SizedBox(height: 8),
                        TextFieldDecoration(
                          screenWidth: screenWidth,
                          screenHeight: screenHeight,
                          widthFactor: 0.6,
                        ),
                      ],
                    ),
                  ),
                  //Expanded(child: Container()),
                 TextButton(
  onPressed: () async {
    
await showDialog<void>(
  context: context,
  //barrierDismissible: false,
  builder: (BuildContext context) {
    return StatefulBuilder(
      builder: (context, setState) {
        return AlertDialog(
          title:const Text('İndirim'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio<Indirim>(
                          value: Indirim.tutar,
                          groupValue: _seciliIndirim,
                          onChanged: (Indirim? value) {
                            if (value != null) {
                              setState(() {
                                _seciliIndirim = value;
                              });
                            }
                          },
                        ),
                       const  Text(
                      'Tutar (TL)',
                      style: TextStyle(fontSize: 14),
                    ),
                      ],
                    ),
                  const SizedBox(width: 25,),
                    Row(
                      children: [
                        Radio<Indirim>(
                          value: Indirim.oran,
                          groupValue: _seciliIndirim,
                          onChanged: (Indirim? value) {
                            if (value != null) {
                              setState(() {
                                _seciliIndirim = value;
                              });
                            }
                          },
                        ),
                      const Text(
                      'Oran',
                      style: TextStyle(fontSize: 14),
                    ),  
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    if (_seciliIndirim == Indirim.tutar)
                      Expanded(
                        child: TextField(
                          controller: _textFieldController1,
                          decoration:const InputDecoration(
                            labelText: "0,00",
                          ),
                        ),
                      ),
                    if (_seciliIndirim == Indirim.oran)
                      Expanded(
                        child: TextField(
                          controller: _textFieldController2,
                          decoration:const InputDecoration(
                            labelText: "0,00",
                          ),
                        ),
                      ),
                  ],
                ),
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
);

  },
  child: const Text(
    'İndirim Uygula',
    style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),
  ),
),

                ],
              ),
              const SizedBox(height: 8),
              const Divider(),
              const SizedBox(height: 8),
             const Column(
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 30, top: 20, right: 80),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        Text(
                          'TOPLAM',
                          style: TextStyle(
                              fontSize: 16, color: yTextColor, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'TUTAR',
                          style: TextStyle(
                              fontSize: 16, color: yTextColor, decoration: TextDecoration.underline, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                   ToplamTutar(
                    textLabels: [
                      'Ara Toplam:',
                      'İndirim:',
                      'Toplam İndirim:',
                      'Ek Vergi:',
                      'Toplam KDV:',
                      'Genel Toplam:',
                    ],
                    textValues: [
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                      '₺0.00',
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 18),
            ],
          ),
        ),
      ),
    );
  }
}
