import 'package:efaturamobileapp/alislar/alis_faturasi/secenekler/alisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/bottom_app_bar_widget_toplam.dart';
import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/container_widget.dart';
import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/screens/form_screen_save.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/siralama_islemi_widget.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/alt_basliklar/yeni_rapor.dart';
import 'package:flutter/material.dart';

class AltinFormScreen extends StatefulWidget {
  String appBarBaslik;

  AltinFormScreen({required this.appBarBaslik});

  @override
  State<AltinFormScreen> createState() => _AltinFormScreenState();
}

class _AltinFormScreenState extends State<AltinFormScreen> {
  int secim = 0;
  @override
  void initState() {
    loading();
    super.initState();
  }

  void loading() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const DrawerBar(),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Text(
          widget.appBarBaslik,
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CustomIconButton(
            options: [
              SheetOption(
                icon: const Icon(Icons.filter_alt, color: Colors.black),
                text: 'Detaylı Arama',
                page: const AlisFaturasiDetayliArama(),
              ),
              SheetOption(
                icon: const Icon(Icons.swap_vert, color: Colors.black),
                text: 'Sıralama',
                onTap: () {
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return SiralamaIslemi(
                        onSort: (sortedItems) {},
                        optionIds: const [3, 4, 5, 6, 7, 8],
                      );
                    },
                  );
                },
              ),
              SheetOption(
                icon: const Icon(Icons.find_in_page, color: Colors.black),
                text: 'Muhasebe Notu',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
              ),
              SheetOption(
                icon: Image.asset(
                  'assets/icons/excelicon.png',
                  width: 20,
                  height: 20,
                ),
                text: "Excel'e Aktar",
                page: const YeniRaporEkle(),
              ),
              SheetOption(
                icon: const Icon(Icons.delete, color: Colors.black),
                text: 'Sil',
                onTap: () {
                  eventBus.fire(ShowCheckboxEvent(true));
                  Navigator.pop(context);
                },
              ),
            ],
          )
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              const SearchField(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
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
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Altın Girişi',
                      altinMetin: "Miktar:",
                      paraBirimi: '₺1000',
                      showInfo: true,
                      vade: true,
                      page: FormScreenSaveAltin(
                        appBarBaslik: '${widget.appBarBaslik} Faturası',
                      ),
                    ),
                    Divider(),
                    ContainerWidget(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: '000000000000001',
                      durumu: 'Altın Girişi',
                      altinMetin: "Miktar:",
                      paraBirimi: '₺1000',
                      showInfo: true,
                      vade: true,
                      page: FormScreenSaveAltin(
                        appBarBaslik: '${widget.appBarBaslik} Faturası',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBarToplam(
        firstText: "TOPLAM",
        secondText: "₺1000",
      ),
      floatingActionButton: CustomFAB(
        isSpeedDial: false,
        childrenData: [
          SpeedDialData(
            label: widget.appBarBaslik,
            route: FormScreenEkleAltin(
                appBarBaslik: widget.appBarBaslik, personImageBorderMetin: ""),
          ),
        ],
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
