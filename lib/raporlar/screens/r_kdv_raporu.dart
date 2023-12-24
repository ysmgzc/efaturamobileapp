import 'package:efaturamobileapp/constants.dart';
import 'package:efaturamobileapp/custom_pop_menu.dart';
import 'package:flutter/material.dart';

import '../../drawer_bar.dart';

class RKdvRaporuScreen extends StatefulWidget {
  const RKdvRaporuScreen({Key? key}) : super(key: key);

  @override
  State<RKdvRaporuScreen> createState() => _RKdvRaporuScreenState();
}

class _RKdvRaporuScreenState extends State<RKdvRaporuScreen> {
  String? selectedValue;
  List<String> items = <String>[
    '2023',
    '2022',
    '2021',
    '2020',
    '2019',
    '2018',
  ];
  String? selectedValue1;
  List<String> items1 = <String>[
    'OCAK',
    'ŞUBAT',
    'MART',
    'NİSAN',
    'MAYIS',
    'HAZİRAN',
    'TEMMUZ',
    'AĞUSTOS',
    'EYLÜL',
    'EKİM',
    'KASIM',
    'ARALIK',
  ];

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'KDV Raporu',
        ),
        actions: [
          IconButton(
            icon: Image.asset('assets/icons/paylasicon.png'),
            onPressed: () {},
          ),
        ],
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
              const SizedBox(height: 8),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomPopMenuWidget(
                        width: screenWidth * 0.43,
                        title: "YIL",
                        menuWidth: screenWidth * 0.35,
                        selectedValue: "2023",
                        items: items,
                        menuItemsWidth: screenWidth * 0.35,
                      ),
                      const SizedBox(width: 10),
                      CustomPopMenuWidget(
                        width: screenWidth * 0.44,
                        title: "AY",
                        menuWidth: screenWidth * 0.35,
                        selectedValue: "OCAK",
                        items: items1,
                        menuItemsWidth: screenWidth * 0.35,
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.height * 0.08,
                  width: MediaQuery.of(context).size.width * 0.95,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 0),
                        blurRadius: 20,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Ödenecek KDV",
                          style: TextStyle(
                            color: yTextColor3,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "₺0,00",
                          style: TextStyle(
                            color: yTextColor3,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
