import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class KrediKartlarimScreen extends StatefulWidget {
  const KrediKartlarimScreen({super.key});

  @override
  State<KrediKartlarimScreen> createState() => _KrediKartlarimScreenState();
}

class _KrediKartlarimScreenState extends State<KrediKartlarimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text(
          'Hesap Hareketleri',
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Container(
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
                child: Column(
                  children: [
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.2, top: 10),
                        child: Text(
                          "Kredi Kartım", // textAlign: TextAlign.start,
                          style: TextStyle(
                            color: kTextColor3,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.1, right: 20.1),
                      child: Divider(
                        color: Colors.grey.shade300,
                        thickness: 2,
                      ),
                    ),
                    const Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 20.1, bottom: 10),
                        child: Text(
                          "Güncel Bakiye: 0.00",
                          style: TextStyle(
                            color: kTextColor2,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
