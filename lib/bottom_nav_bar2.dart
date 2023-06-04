/*import 'package:fatura_app_2/alislar/alis_faturasi/alis_fatura_screen.dart';
import 'package:fatura_app_2/masraflar/giderler.dart';
import 'package:fatura_app_2/home_screen/home_page_screen.dart';
import 'package:fatura_app_2/satislar/satis_faturasi/satis_fatura_screen.dart';
import 'package:fatura_app_2/stoklar_ve_hizmetler/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int selectedindex = 0;
  final List<Widget> _widgetOptions = [
    const HomePageScreen(),
    const SatisFaturalarScreen(),
    const AlisFaturalarScreen(),
    const GiderlerScreen(),
    const UrunlerScreen(),
  ];

  void itemtab(int index) {
    setState(() {
      selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedindex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        unselectedFontSize: 14,
        selectedFontSize: 15,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long),
            label: 'Satışlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Alışlar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.fact_check),
            label: 'Giderler',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2),
            label: 'Ürünler',
          ),
        ],
        currentIndex: selectedindex,
        onTap: itemtab,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff74A2C3),
      ),
    );
  }
}
*/