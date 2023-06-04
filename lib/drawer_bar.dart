import 'package:efaturamobileapp/alislar/alis_faturasi/alis_fatura_screen.dart';
import 'package:efaturamobileapp/alislar/alis_makbuz/alis_makbuz_screen.dart';
import 'package:efaturamobileapp/alislar/alis_siparisler/alis_siparisler_screen.dart';
import 'package:efaturamobileapp/screens/destek_screen.dart';
import 'package:efaturamobileapp/entegrasyonlar/entegrasyon_screen.dart';
import 'package:efaturamobileapp/firma_bilgileri/firma_bilgileri_screen.dart';
import 'package:efaturamobileapp/interaktif_vergi_dairesi/interaktif_vergi_dairesi_screen.dart';
import 'package:efaturamobileapp/screens/login_screen.dart';
import 'package:efaturamobileapp/verileri_disa_aktar/verileri_disa_aktar_screen.dart';
import 'package:efaturamobileapp/search_field.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/hizmetler/hizmetler.dart';
import 'package:efaturamobileapp/home_screen/genel_bakis.dart';
import 'package:efaturamobileapp/giderler/giderler.dart';
import 'package:efaturamobileapp/musteriler_tedarikciler.dart/musteri_ekle/musteriler_tedarikciler_screen/musteriler_tedarikciler.dart';
import 'package:efaturamobileapp/para/banka_hesaplari/banka_hesaplari.dart';
import 'package:efaturamobileapp/para/banka_mutabakati/banka_mutabakati.dart';
import 'package:efaturamobileapp/para/cekler/cekler.dart';
import 'package:efaturamobileapp/para/kasalar/kasalar.dart';
import 'package:efaturamobileapp/para/nakit_durumu.dart';
import 'package:efaturamobileapp/raporlar/r_alis_ozeti/r_alis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_alis_satis_toplamlari/r_alis_satis_toplamlari.dart';
import 'package:efaturamobileapp/raporlar/r_kdv_raporu.dart';
import 'package:efaturamobileapp/raporlar/r_masraf_ozeti/r_masraf_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_satis_ozeti/r_satis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/r_siparis_ozeti/r_siparis_ozeti.dart';
import 'package:efaturamobileapp/raporlar/raporlar.dart';
import 'package:efaturamobileapp/satislar/satis_faturasi/satis_fatura_screen.dart';
import 'package:efaturamobileapp/satislar/satis_makbuz/satis_makbuz_screen.dart';
import 'package:efaturamobileapp/satislar/satis_siparis/satis_siparis_screen.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/stok_hareketleri/stok_hareketleri.dart';
import 'package:efaturamobileapp/stoklar_ve_hizmetler/urunler/urunler_screen.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

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
                          decoration:const BoxDecoration(
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
                          child:const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:  [
                              Text(
                                'Yeşim Gezici',
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                              Text(
                                'gezici267@gmail.com',
                                style: TextStyle(fontSize: 14, color: Colors.black),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
          
                //-------------------------------------------------
                 const SearchField(),
          
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset('assets/icons/drawericon/genelbakisicon.png'),
                  ),
                  title: 'Genel Bakış',
                  titleStyle: kListTileSize,
                  route: const GenelBakisScreen(),
                  enablePadding: false,
                ),
                //--------------------------------------------------
                ExpansionTile(
                  initiallyExpanded: true,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/satisicon.png'),
                  ),
                  title: const Text('Satışlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/faturaicon.png'),
                      ),
                      title: 'Satış Faturaları',
                      titleStyle: kListTileSize,
                      route: const SatisFaturalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/siparisicon.png'),
                      ),
                      title: 'Siparişler',
                      titleStyle: kListTileSize,
                      route: const SatisSiparislerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/serbestmeslekmakbuzicon.png'),
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
                  initiallyExpanded: true,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/alisicon.png'),
                  ),
                  title: const Text('Alışlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/faturaicon.png'),
                      ),
                      title: 'Alış Faturaları',
                      titleStyle: kListTileSize,
                      route: const AlisFaturalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/siparisicon.png'),
                      ),
                      title: 'Siparişler',
                      titleStyle: kListTileSize,
                      route: const AlisSiparislerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/serbestmeslekmakbuzicon.png'),
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
                    child: Image.asset('assets/icons/drawericon/masraficon.png'),
                  ),
                  title: 'Giderler',
                  titleStyle: kListTileSize,
                  route: const GiderlerScreen(),
                  enablePadding: false,
                ),
                //------------------------------------------------------------
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset('assets/icons/drawericon/musteritedarikciicon.png'),
                  ),
                  title: 'Müşteriler & Tedarikçiler',
                  titleStyle: kListTileSize,
                  route: const MusterilerTedarikcilerScreen(),
                  enablePadding: false,
                ),
                //-------------------------------------------------
          
                ExpansionTile(
                  initiallyExpanded: true,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/stokicon.png'),
                  ),
                  title: const Text('Stoklar & Hizmetler', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/urunicon.png'),
                      ),
                      title: 'Ürünler',
                      titleStyle: kListTileSize,
                      route: const UrunlerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    //-----------------------------------------------------------------------
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/hizmetlericon.png'),
                      ),
                      title: 'Hizmetler',
                      titleStyle: kListTileSize,
                      route: const HizmetlerScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/stokhareketicon.png'),
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
                  initiallyExpanded: true,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/parahesabiicon.png'),
                  ),
                  title: const Text('Para', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/nakitdurumicon.png'),
                      ),
                      title: 'Nakit Durumu',
                      titleStyle: kListTileSize,
                      route: const NakitDurumuScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/kasaicon.png'),
                      ),
                      title: 'Kasalar',
                      titleStyle: kListTileSize,
                      route: const KasalarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/bankahesapmutabakaticon.png'),
                      ),
                      title: 'Banka Hesapları',
                      titleStyle: kListTileSize,
                      route: const BankaHesaplariScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/bankahesapmutabakaticon.png'),
                      ),
                      title: 'Banka Mutabakatı',
                      titleStyle: kListTileSize,
                      route: const BankaMutabakatiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/cekicon.png'),
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
                  initiallyExpanded: true,
                  leading: SizedBox(
                    width: 30.0,
                    height: 30.0,
                    child: Image.asset('assets/icons/drawericon/raporicon.png'),
                  ),
                  title: const Text('Raporlar', style: kExpTileSize),
                  children: <Widget>[
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/raporlarsayfasiicon.png'),
                      ),
                      title: 'Raporlar Sayfası',
                      titleStyle: kListTileSize,
                      route: const RaporlarScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/satisraporicon.png'),
                      ),
                      title: 'Satış Özeti',
                      titleStyle: kListTileSize,
                      route: const RSatisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/alisraporicon.png'),
                      ),
                      title: 'Alış Özeti',
                      titleStyle: kListTileSize,
                      route: const RAlisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/masrafraporuicon.png'),
                      ),
                      title: 'Masraf Özeti',
                      titleStyle: kListTileSize,
                      route: const RMasrafOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/siparisraporuicon.png'),
                      ),
                      title: 'Sipariş Özeti',
                      titleStyle: kListTileSize,
                      route: const RSiparisOzetiScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/alissatistoplamrapor.png'),
                      ),
                      title: 'Alış / Satış Toplamları',
                      titleStyle: kListTileSize,
                      route: const RAlisSatisToplamlariScreen(),
                      backgroundColor: Colors.grey.shade50,
                    ),
                    CustomListTile(
                      icon: SizedBox(
                        child: Image.asset('assets/icons/drawericon/kdvraporicon.png'),
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
                    child: Image.asset('assets/icons/drawericon/verileridisaaktaricon.png'),
                  ),
                  title: 'Verileri Dışa Aktar',
                  titleStyle: kListTileSize,
                  route: const VerileriDisaAktarScreen(),
                  enablePadding: false,
                ),
                 const Divider(endIndent: 30,indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset('assets/icons/drawericon/interaktifvergidairesiicon.png'),
                  ),
                  title: 'İnteraktif Vergi Dairesi',
                  titleStyle: kListTileSize,
                  route: const InteraktifVergiDairesiScreen(),
                  enablePadding: false,
                ),
                  const Divider(endIndent: 30,indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset('assets/icons/drawericon/entegrasyonlaricon.png'),
                  ),
                  title: 'Entegrasyonlar',
                  titleStyle: kListTileSize,
                  route: const EntegrasyonScreen(),
                  enablePadding: false,
                ),
                   const Divider(endIndent: 30,indent: 65),
                CustomListTile(
                  icon: SizedBox(
                    child: Image.asset('assets/icons/drawericon/firmabilgileriicon.png'),
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
          decoration:const BoxDecoration(
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
                  onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const DestekScreen()),
            );
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
                  label:const Text(
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
                  onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>const LoginScreen()),
            );
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
    required this.route,
    this.enablePadding = true,
    this.backgroundColor = Colors.white,
  }) : super(key: key);

  final Widget icon;
  final String title;
  final TextStyle titleStyle;
  final Widget route;
  final bool enablePadding;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundColor,
      child: Padding(
        padding: enablePadding ? const EdgeInsets.only(left: 25) : EdgeInsets.zero,
        child: ListTile(
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => route),
            );
          },
        ),
      ),
    );
  }
}
