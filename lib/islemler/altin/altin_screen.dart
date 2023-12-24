import 'package:efaturamobileapp/alislar/alis_faturasi/secenekler/alisfaturasidetayliarama.dart';
import 'package:efaturamobileapp/bottom_show_dialog_widget.dart';
import 'package:efaturamobileapp/islemler/components/container_widget_new.dart';
import 'package:efaturamobileapp/float_action_buton_widget.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_save_altin.dart';
import 'package:efaturamobileapp/islemler/components/custom_container_widget.dart';
import 'package:efaturamobileapp/islemler/components/custom_row_widget.dart';
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
      appBar: AppBar(
        title: Text(
          widget.appBarBaslik,
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.05,
                ),
                child: const SearchField(text: "Buraya yazın...")),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            CustomRowWidget(
              optionIds: [3, 4, 5, 6, 7, 8],
              destinationWidget: AlisFaturasiDetayliArama(),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, right: 8),
              child: CustomContainerWidget(
                screenWidth: screenWidth,
                screenHeight: screenHeight,
                child: Column(
                  children: [
                    ContainerWidgetNew(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: 'AG-202300001',
                      paraBirimi: '140,400 GR',
                      tarih: "16-06-2022",
                      toplam: "94,900 GR",
                      vade: true,
                      page: FormScreenSaveAltin(
                        appBarBaslik: '${widget.appBarBaslik} Faturası',
                      ),
                    ),
                    Divider(),
                    ContainerWidgetNew(
                      tedarikciAdi: 'Deneme Satış Ltd. Şti.',
                      tedarikciNo: 'AG-202300001',
                      paraBirimi: '140,400 GR',
                      tarih: "16-06-2022",
                      toplam: "94,900 GR",
                      vade: true,
                      page: FormScreenSaveAltin(
                        appBarBaslik: '${widget.appBarBaslik} Faturası',
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: CustomFAB(
          isSpeedDial: false,
          childrenData: [
            SpeedDialData(
              label: widget.appBarBaslik,
              route: FormScreenEkleAltin(
                  appBarBaslik: widget.appBarBaslik,
                  personImageBorderMetin: ""),
            ),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
