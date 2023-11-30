/*import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/hesaplar/hesaplar.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class HesapBilgileri extends StatefulWidget {
  const HesapBilgileri({super.key});

  @override
  State<HesapBilgileri> createState() => _HesapBilgileriState();
}

class _HesapBilgileriState extends State<HesapBilgileri> {
  TextEditingController dateInput = TextEditingController();
  @override
  void initState() {
    dateInput.text = "";
    super.initState();
  }

  bool? value = false;
  String? selectedValue1;
  List<String> items1 = [
    'Kasa',
    'Banka',
    'POS',
    'Kredi Kartı',
  ];
  String? selectedValue2;
  List<String> items2 = [
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
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/loggin2.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.1,
              ),
              Text(
                'Hesap Bilgileri',
                style: TextStyle(
                  color: kTextColor,
                  fontSize: MediaQuery.of(context).size.width * 0.07,
                  fontWeight: FontWeight.bold,
                  shadows: const [
                    BoxShadow(
                        color: Colors.black,
                        offset: Offset(1, 2),
                        blurRadius: 3),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              hesapbilgilericontainer1("Hesap Adı: "),
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: DropdownButton2(
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(
                        Icons.expand_more,
                        color: kIconColor,
                      ),
                    ),
                    underline: Container(height: 2, color: Colors.white60),
                    hint: const Text(
                      textAlign: TextAlign.start,
                      "Hesap Tipi",
                      style: kHintTextStyle,
                    ),
                    items: items1
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue1,
                    onChanged: (value) {
                      setState(() {
                        selectedValue1 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    itemHeight: 40,
                    //itemWidth: 140,
                  ),
                ),
              ),
              //----------------------------------
              Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: DropdownButton2(
                    icon: const Padding(
                      padding: EdgeInsets.only(right: 7),
                      child: Icon(
                        Icons.expand_more,
                        color: kIconColor,
                      ),
                    ),
                    underline: Container(height: 2, color: Colors.white60),
                    hint: const Text(
                      textAlign: TextAlign.start,
                      "Para Birimi",
                      style: kHintTextStyle,
                    ),
                    items: items2
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ))
                        .toList(),
                    value: selectedValue2,
                    onChanged: (value) {
                      setState(() {
                        selectedValue2 = value as String;
                      });
                    },
                    buttonHeight: 40,
                    buttonWidth: MediaQuery.of(context).size.width * 0.8,
                    itemHeight: 40,
                    //itemWidth: 140,
                  ),
                ),
              ),
              hesapbilgilericontainer1("Bakiyesi: "),
            ],
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
              Get.to(const HesaplarScreen());
            },
            icon: const Icon(Icons.delete_outline),
            label: const Text('Vazgeç'),
            shape: const StadiumBorder(
                side: BorderSide(color: kButtonColor, width: 5)),
          ),
          FloatingActionButton.extended(
            backgroundColor: kButtonColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: const Text('Kaydet'),
                  content: const Text('Kaydetme işleminiz başarılı.'),
                  actions: [
                    ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(kButtonColor),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text('Kapat'))
                  ],
                ),
              );
            },
            icon: const Icon(Icons.save),
            label: const Text('Kaydet'),
            shape: const StadiumBorder(
                side: BorderSide(color: kButtonColor, width: 5)),
          ),
        ],
      ),
    );
  }

  Container hesapbilgilericontainer1(String text) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8,
      alignment: Alignment.center,
      child: TextFormField(
        style: const TextStyle(
          height: 1.5,
        ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 10, top: 10, bottom: 15),
          prefixIcon: Padding(
              padding: const EdgeInsets.only(top: 12),
              child: Text(
                text,
                style: kHintTextStyle,
              )),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: kBorderColor),
          ),
          focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: kBorderColor)),
        ),
      ),
    );
  }
}*/