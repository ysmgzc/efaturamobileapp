import 'package:efaturamobileapp/active_switch.dart';
import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/text_field_decoration.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../custom_pop_menu.dart';

class BankaHesabiEkle extends StatefulWidget {
  const BankaHesabiEkle({Key? key}) : super(key: key);

  @override
  State<BankaHesabiEkle> createState() => _BankaHesabiEkleState();
}

class _BankaHesabiEkleState extends State<BankaHesabiEkle> {
  TextEditingController dateInput = TextEditingController();
  String? selectedValue;
  List<String> items = <String>[
    'ABN AMRO BANK N.V.',
    'ADABANK A.Ş.',
    'AKBANK T.A.Ş.',
    'AKTİF YATIRIM BANKASI A.Ş.',
    'ALBARAKA TÜRK KATILIM BANKASI A.Ş.',
    'ALTERNATİFBANK A.Ş.',
    'ANADOLUBANK A.Ş.',
    'ARAP TÜRK BANKASI A.Ş.',
    'ASYA FİNANS KURUMU A S',
    'BANKO DI ROMA SPA',
    'BANK OF CHINA TURKEY A.Ş.',
    'BANKPOZİTİF KREDİ VE KALKINMA BANKASI A.Ş.',
    'BİRLEŞİK FORM BANKASI A.Ş.',
    'BNP AK DRESDNER',
    'BURGAN BANK A.Ş.',
    'CITIBANK A.Ş.',
    'DENİZBANK A.Ş.',
    'DEUTSCHE BANK A.Ş.',
    'DİLER YATIRIM BANKASI A.Ş.',
    'EMKT MERKEZİ',
    'FİBABANKA A.Ş.',
    'FORTIS BANK A.Ş.',
    'GSD YATIRIM BANKASI A.Ş.',
    'HSBC BANK A.Ş.',
    'ICBC TURKEY BANK A.Ş.',
    'İLLER BANKASI A.Ş.',
    'ING BANK A.Ş.',
    'INTESA SANPAOLO S.P.A.',
    'İSTANBUL TAKAS VE SAKLAMA BANKASI A.Ş.',
    'JPMORGAN CHASE BANK N.A.',
    'KUVEYT TÜRK KATILIM BANKASI A.Ş.',
    'MERKEZİ KAYIT KURULUŞU A.Ş.',
    'MERRILL LYNCH YATIRIM BANK A.Ş.',
    'MUFG Bank Turkey A.Ş.',
    'NUROL YATIRIM BANKASI A.Ş.',
    'ODEA BANK A.Ş.',
    'PASHA YATIRIM BANKASI A.Ş.',
    'QNBFİNANSBANK A.Ş.',
    'RABOBANK A.Ş.',
    'ŞEKERBANK T.A.Ş.',
    'SOCIETE GENERALE (SA)',
    'STANDART CHARTERET YATIRIM BANKASI TÜRK A.Ş.',
    'TEST Bank A.Ş.',
    'TÜRK EKONOMİ BANKASI A.Ş.',
    'TÜRK EXİMBANK',
    'TURKISH BANK A.Ş.',
    'TÜRKİYE CUMHURİYETİ ZİRAAT BANKASI A.Ş.',
    'TÜRKİYE CUMHURİYET MERKEZ BANKASI',
    'TÜRKİYE EMLAK KATILIM BANKASI A.Ş.',
    'TÜRKİYE FİNANS KATILIM BANKASI A.Ş.',
    'TÜRKİYE GARANTİ BANKASI A.Ş.',
    'TÜRKİYE HALK BANKASI A.Ş.',
    'TÜRKİYE İŞ BANKASI A.Ş.',
    'TÜRKİYE KALKINMA VE YATIRIM BANKASI A.Ş.',
    'TÜRKİYE SINAİ KALKINMA BANKASI A.Ş.',
    'TÜRKİYE VAKIFLAR BANKASI T.A.O.',
    'TURKLAND BANK A.Ş.',
    'VAKIF KATILIM BANKASI A.Ş.',
    'WESTDEUTSCHE LANDESBANK',
    'YAPI VE KREDİ BANKASI A.Ş.',
    'YÖNLENDİRİCİ',
    'ZİRAAT KATILIM BANKASI A.Ş.',
  ];

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
        title: const Text(
          'Banka Hesabı Ekle',
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
                title: "BANKA ADI",
                menuWidth: screenWidth * 0.9,
                selectedValue: "ABN AMRO BANK N.V.",
                items: items,
                menuItemsWidth: screenWidth * 0.9,
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('ŞUBE KODU *',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('ŞUBE ADI *',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('YETKİLİ KİŞİLER',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('TELEFON',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.center,
                child: const Text(
                  'YENİ HESAP',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('HESAP ADI *',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('HESAP NUMARASI *',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              Container(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('IBAN',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
                    const SizedBox(height: 8),
                    TextFieldDecoration(
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                  ],
                ),
              ),
              const Divider(),
              CustomPopMenuWidget(
                width: screenWidth * 0.9,
                title: "PARA BİRİMİ",
                menuWidth: screenWidth * 0.9,
                selectedValue: "TL",
                items: items1,
                menuItemsWidth: screenWidth * 0.9,
              ),
              //---------------------
              const Divider(),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('AÇILIŞ BAKİYESİ',
                          style: TextStyle(color: yTextColor, fontSize: 14)),
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
                        title: "BAKİYE DURUMU",
                        menuWidth: screenWidth * 0.4,
                        selectedValue: "(+) Bakiye",
                        items: items2,
                        menuItemsWidth: screenWidth * 0.2,
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
                    const Text('AÇILIŞ BAKİYESİ TARİHİ',
                        style: TextStyle(color: yTextColor, fontSize: 14)),
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
                                dateInput.text =
                                    DateFormat('dd/MM/yyyy').format(pickedDate);
                              });
                            }
                          },
                          child: SizedBox(
                            width: screenWidth * 0.9,
                            height: screenHeight * 0.07,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                dateInput.text.isNotEmpty
                                    ? dateInput.text
                                    : DateFormat('  dd/MM/yyyy')
                                        .format(DateTime.now()),
                                style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
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
              Row(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Kredi Kartı',
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor: const Color(0xffA1CFC2),
      ),
    );
  }
}
