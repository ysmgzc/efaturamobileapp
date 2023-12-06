import 'package:efaturamobileapp/alislar/alis_faturasi/alis_fatura_screen.dart';
import 'package:efaturamobileapp/alislar/alis_makbuz/alis_makbuz_screen.dart';
import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparisler_screen.dart';
import 'package:efaturamobileapp/islemler/altin/form_screen_ekle_altin.dart';
import 'package:efaturamobileapp/raporlar/rapor_ozeti_screen.dart';
import 'package:efaturamobileapp/screens/destek_screen.dart';
import 'package:efaturamobileapp/entegrasyonlar/entegrasyon_screen.dart';
import 'package:efaturamobileapp/firma_bilgileri/firma_bilgileri_screen.dart';
import 'package:efaturamobileapp/interaktif_vergi_dairesi/interaktif_vergi_dairesi_screen.dart';
import 'package:efaturamobileapp/screens/login_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_alt%C4%B1n/urunler_screen_altin.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/verileri_disa_aktar_screen.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmetler.dart';
import 'package:efaturamobileapp/home_screen/genel_bakis.dart';
import 'package:efaturamobileapp/giderler/giderler_screen.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/para/banka_hesaplari/banka_hesaplari.dart';
import 'package:efaturamobileapp/para/banka_mutabakati/banka_mutabakati.dart';
import 'package:efaturamobileapp/para/cekler/cekler.dart';
import 'package:efaturamobileapp/para/kasalar/kasalar.dart';
import 'package:efaturamobileapp/para/nakit_durumu.dart';
import 'package:efaturamobileapp/raporlar/r_alis_satis_toplamlari/r_alis_satis_toplamlari.dart';
import 'package:efaturamobileapp/raporlar/r_kdv_raporu.dart';
import 'package:efaturamobileapp/raporlar/r_siparis_ozeti/r_siparis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/raporlar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_fatura_screen.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/satis_makbuz_screen.dart';
import 'package:efaturamobileapp/satislar/satis_siparis/satis_siparis_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_hareketleri.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'constants.dart';
import 'islemler/altin/altin_screen.dart';

class DrawerBar extends StatelessWidget {
  const DrawerBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/images/splashh.png'),
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          alignment: Alignment.center,
                          child: const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Yeşim Gezici',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                'gezici267@gmail.com',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                //-------------------------------------------------
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const SearchField(),
                ),

                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/genelbakisicon.png'),
                  ),
                  title: 'Genel Bakış',
                  titleStyle: kListTileSize,
                  route: const GenelBakisScreen(),
                  enablePadding: false,
                ),
                //--------------------------------------------KYM İşlemler
                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/satisicon.png'),
                  ),
                  title: const Text('KYM İşlemler', style: kExpTileSize),
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Altın', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Altın Girişi"),
                              );
                            },
                            iconButton: true,
                            title: 'Altın Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Altın Girişi',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Altın Çıkışı"),
                              );
                            },
                            iconButton: true,
                            title: 'Altın Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Altın Çıkışı',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Altın Alışı"),
                              );
                            },
                            iconButton: true,
                            title: 'Altın Alışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Altın Alışı',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Altın Satışı"),
                              );
                            },
                            iconButton: true,
                            title: 'Altın Satışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Altın Satışı',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(
                                    appBarBaslik: "Bedelli Altın Girişi"),
                              );
                            },
                            iconButton: true,
                            title: 'Bedelli Altın Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Bedelli Altın Girişi',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(
                                    appBarBaslik: "Bedelli Altın Çıkışı"),
                              );
                            },
                            iconButton: true,
                            title: 'Bedelli Altın Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Bedelli Altın Çıkışı',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Gelen İade"),
                              );
                            },
                            iconButton: true,
                            title: 'Gelen İade',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Gelen İade',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "Çıkan İade"),
                              );
                            },
                            iconButton: true,
                            title: 'Çıkan İade',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'Çıkan İade',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "İşçilik Girişi"),
                              );
                            },
                            iconButton: true,
                            title: 'İşçilik Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'İşçilik Girişi',
                                personImageBorderMetin: ""),
                          ),
                          CustomListTile(
                            icon: Image.asset(
                              'assets/icons/drawericon/historyicon.png',
                              width: 30.0,
                              height: 30.0,
                            ),
                            onIconTap: () {
                              Get.to(
                                AltinFormScreen(appBarBaslik: "İşçilik Çıkışı"),
                              );
                            },
                            iconButton: true,
                            title: 'İşçilik Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                            route: FormScreenEkleAltin(
                                appBarBaslik: 'İşçilik Çıkışı',
                                personImageBorderMetin: ""),
                          ),
                        ],
                      ),
                    ),
                    //-------------------Hurda
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Hurda', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Hurda Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Hurda Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                    //-------------------Nakit
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Nakit', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Nakit Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Nakit Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                    //-------------------Ziynet
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Ziynet', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Ziynet Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Ziynet Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                    //-------------------Taş
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Taş', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Taş Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Taş Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                    //-------------------Gümüş
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Gümüş', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Gümüş Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Gümüş Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                    //-------------------Platin
                    Padding(
                      padding: const EdgeInsets.only(left: 27),
                      child: ExpansionTile(
                        initiallyExpanded: false,
                        leading: SizedBox(
                          width: 30.0,
                          height: 30.0,
                          child: Image.asset(
                              'assets/icons/drawericon/satisicon.png'),
                        ),
                        title: Text('Platin', style: kListTileSize),
                        children: <Widget>[
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Platin Girişi',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                          CustomListTile(
                            icon: SizedBox(
                              child: Image.asset(
                                  'assets/icons/drawericon/faturaicon.png'),
                            ),
                            title: 'Platin Çıkışı',
                            titleStyle: kListTileSize,
                            backgroundColor: Colors.grey.shade50,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                //--------------------------------------------------Satışlar
                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/satisicon.png'),
                  ),
                  title: const Text('Satışlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/faturaicon.png'),
                      ),
                      title: 'Satış Faturaları',
                      titleStyle: kListTileSize,
                      route: const SatisFaturalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/siparisicon.png'),
                      ),
                      title: 'Siparişler',
                      titleStyle: kListTileSize,
                      route: const SatisSiparislerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/serbestmeslekmakbuzicon.png'),
                      ),
                      title: 'Serbest Meslek Makbuzu',
                      titleStyle: kListTileSize,
                      route: const SatisMakbuzScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                  ],
                ),
                //----------------------------------------------------
                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/alisicon.png'),
                  ),
                  title: const Text('Alışlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/faturaicon.png'),
                      ),
                      title: 'Alış Faturaları',
                      titleStyle: kListTileSize,
                      route: const AlisFaturalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/siparisicon.png'),
                      ),
                      title: 'Siparişler',
                      titleStyle: kListTileSize,
                      route: const AlisSiparislerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/serbestmeslekmakbuzicon.png'),
                      ),
                      title: 'Serbest Meslek Makbuzu',
                      titleStyle: kListTileSize,
                      route: const AlisMakbuzScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                  ],
                ),
                //-------------------------------------------------------------------
                CustomListTile(
                  icon: SizedBox(
                    child:
                        Image.asset('assets/icons/drawericon/masraficon.png'),
                  ),
                  title: 'Giderler',
                  titleStyle: kListTileSize,
                  route: const GiderlerScreen(),
                  enablePadding: false,
                ),
                //------------------------------------------------------------
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/musteritedarikciicon.png'),
                  ),
                  title: 'Müşteriler & Tedarikçiler',
                  titleStyle: kListTileSize,
                  route: MusterilerTedarikcilerScreen(
                    secim: 0,
                    appBarBaslik: "",
                  ),
                  enablePadding: false,
                ),
                //-------------------------------------------------

                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/stokicon.png'),
                  ),
                  title: const Text('Stoklar & Hizmetler', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child:
                            Image.asset('assets/icons/drawericon/urunicon.png'),
                      ),
                      title: 'Ürünler',
                      titleStyle: kListTileSize,
                      route: const UrunlerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    //------------------------------
                    CustomListTile(
                      icon: SizedBox(
                        child:
                            Image.asset('assets/icons/drawericon/urunicon.png'),
                      ),
                      title: 'Altın & Para',
                      titleStyle: kListTileSize,
                      route: const UrunlerAltinScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    //-----------------------------------------------------------------------
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/hizmetlericon.png'),
                      ),
                      title: 'Hizmetler',
                      titleStyle: kListTileSize,
                      route: const HizmetlerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/stokhareketicon.png'),
                      ),
                      title: 'Stok Hareketleri',
                      titleStyle: kListTileSize,
                      route: const StokHareketleriScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                  ],
                ),
                //---------------------------------------------------------------------
                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset(
                        'assets/icons/drawericon/parahesabiicon.png'),
                  ),
                  title: const Text('Para', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/nakitdurumicon.png'),
                      ),
                      title: 'Nakit Durumu',
                      titleStyle: kListTileSize,
                      route: const NakitDurumuScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child:
                            Image.asset('assets/icons/drawericon/kasaicon.png'),
                      ),
                      title: 'Kasalar',
                      titleStyle: kListTileSize,
                      route: const KasalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/bankahesapmutabakaticon.png'),
                      ),
                      title: 'Banka Hesapları',
                      titleStyle: kListTileSize,
                      route: const BankaHesaplariScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/bankahesapmutabakaticon.png'),
                      ),
                      title: 'Banka Mutabakatı',
                      titleStyle: kListTileSize,
                      route: const BankaMutabakatiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child:
                            Image.asset('assets/icons/drawericon/cekicon.png'),
                      ),
                      title: 'Çekler',
                      titleStyle: kListTileSize,
                      route: const CeklerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                  ],
                ),
                //--------------------------------------------------
                ExpansionTile(
                  initiallyExpanded: false,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/raporicon.png'),
                  ),
                  title: const Text('Raporlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/raporlarsayfasiicon.png'),
                      ),
                      title: 'Raporlar Sayfası',
                      titleStyle: kListTileSize,
                      route: const RaporlarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/satisraporicon.png'),
                      ),
                      title: 'Satış Özeti',
                      titleStyle: kListTileSize,
                      route: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Satış Özeti"),
                      // route: const RSatisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/alisraporicon.png'),
                      ),
                      title: 'Alış Özeti',
                      titleStyle: kListTileSize,
                      route: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Alış Özeti"),
                      //  route: const RAlisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/masrafraporuicon.png'),
                      ),
                      title: 'Masraf Özeti',
                      titleStyle: kListTileSize,
                      route: RaporOzetiScreen(
                          raporOzetiScreenAppBar: "Masraf Özeti"),
                      //route: const RMasrafOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/siparisraporuicon.png'),
                      ),
                      title: 'Sipariş Özeti',
                      titleStyle: kListTileSize,
                      route: const RSiparisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/alissatistoplamrapor.png'),
                      ),
                      title: 'Alış / Satış Toplamları',
                      titleStyle: kListTileSize,
                      route: const RAlisSatisToplamlariScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset(
                            'assets/icons/drawericon/kdvraporicon.png'),
                      ),
                      title: 'KDV Raporu',
                      titleStyle: kListTileSize,
                      route: const RKdvRaporuScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    /* CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/depostokraporicon.png'),
                      ),
                      title: 'Depo Stok Raporu',
                      titleStyle: kListTileSize,
                      route: const DepoStokRaporu(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/iaderaporuicon.png'),
                      ),
                      title: 'İade Raporu',
                      titleStyle: kListTileSize,
                      route: const IadeRaporu(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/stokhareketraporicon.png'),
                      ),
                      title: 'Stok Hareketleri',
                      titleStyle: kListTileSize,
                      route: const StokHareketleriRaporu(),
                      backgroundColor: Colors.grey.shade50,
                    ),*/
                  ],
                ),
                //-----------------------------------------------------------------

                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/verileridisaaktaricon.png'),
                  ),
                  title: 'Verileri Dışa Aktar',
                  titleStyle: kListTileSize,
                  route: const VerileriDisaAktarScreen(),
                  enablePadding: false,
                ),
                const Divider(endIndent: 30, indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/interaktifvergidairesiicon.png'),
                  ),
                  title: 'İnteraktif Vergi Dairesi',
                  titleStyle: kListTileSize,
                  route: const InteraktifVergiDairesiScreen(),
                  enablePadding: false,
                ),
                const Divider(endIndent: 30, indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/entegrasyonlaricon.png'),
                  ),
                  title: 'Entegrasyonlar',
                  titleStyle: kListTileSize,
                  route: const EntegrasyonScreen(),
                  enablePadding: false,
                ),
                const Divider(endIndent: 30, indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset(
                        'assets/icons/drawericon/firmabilgileriicon.png'),
                  ),
                  title: 'Firma Bilgileri',
                  titleStyle: kListTileSize,
                  route: const FirmaBilgileriScreen(),
                  enablePadding: false,
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Get.to(const DestekScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    icon: Image.asset(
                      'assets/icons/drawericon/destekicon.png', // PNG ikonunun yolunu belirtin
                      width: 24,
                      height: 24,
                    ),
                    label: const Text(
                      'Destek',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const VerticalDivider(
                  width: 1,
                  color: Colors.grey,
                ),
                Expanded(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      elevation: 0,
                    ),
                    icon: Image.asset(
                      'assets/icons/drawericon/cikisicon.png',
                      width: 30,
                      height: 30,
                    ),
                    label: const Text(
                      'Çıkış',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.titleStyle,
    this.route,
    this.enablePadding = true,
    this.backgroundColor = Colors.white,
    this.children,
    this.iconButton = false, // Yeni eklenen özellik: iconButton parametresi
    this.onIconTap, // Yeni eklenen özellik: IconButton'a tıklama işlevi
  }) : super(key: key);

  final Widget icon;
  final String title;
  final TextStyle titleStyle;
  final Widget? route;
  final bool enablePadding;
  final Color backgroundColor;
  final List<Widget>? children;
  final bool iconButton; // Yeni eklenen özellik: iconButton parametresi
  final VoidCallback?
      onIconTap; // Yeni eklenen özellik: IconButton'a tıklama işlevi

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding:
            enablePadding ? const EdgeInsets.only(left: 25) : EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              title: Row(
                children: [
                  if (iconButton)
                    IconButton(
                      icon: icon,
                      onPressed: onIconTap,
                    ),
                  if (!iconButton)
                    SizedBox(
                      width: 30.0,
                      height: 30.0,
                      child: icon,
                    ),
                  SizedBox(width: 16),
                  Text(
                    title,
                    style: titleStyle,
                  ),
                ],
              ),
              onTap: () {
                if (route != null) {
                  Get.to(route!);
                }
              },
            ),
            if (children != null) ...children!,
          ],
        ),
      ),
    );
  }
}


/*class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.icon,
    required this.title,
    required this.titleStyle,
    this.route,
    this.enablePadding = true,
    this.backgroundColor = Colors.white,
    this.children,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final TextStyle titleStyle;
  final Widget? route;
  final bool enablePadding;
  final Color backgroundColor;
  final List<Widget>? children;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding:
            enablePadding ? const EdgeInsets.only(left: 25) : EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: SizedBox(
                width: 30.0,
                height: 30.0,
                child: icon,
              ),
              title: Text(
                title,
                style: titleStyle,
              ),
              onTap: () {
                if (route != null) {
                  Get.to(route!);
                }
              },
            ),
            if (children != null) ...children!,
          ],
        ),
      ),
    );
  }
}
*/