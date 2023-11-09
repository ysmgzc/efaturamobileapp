import 'package:efaturamobileapp/drawer_bar.dart';
import 'package:efaturamobileapp/entegrasyonlar/yengec.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EntegrasyonScreen extends StatelessWidget {
  const EntegrasyonScreen({super.key});

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
        title: const Text(
          'Entegrasyonlar',
          style: TextStyle(color: Colors.black),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10),
        child: Column(
          children: [
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "e-Ticaret Entegrasyonu",
              altBaslik: "Aylık 120 TL",
              aciklama:
                  "Pazaryeri ve internet sitenizde gerçekleştirdiğiniz satışlarınızı Logo İşbaşı'na aktarabilir,e-faturanızı otomatik gönderebilir ve stok takibini hatasız gerçekleştirebilirsiniz.",
              page: const YengecScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/payer.png',
              baslik: "Pazaryeri Entegrasyonları",
              altBaslik: "Ücretsiz",
              aciklama:
                  "Pazaryerlerindeki satışlarınızı otomatik olarak Logo İşbaşı'na aktarabilir,müşterilerinize otomatik e-fatura/e-arşiv fatura gönderimini sağlayabilir ve stok takibini hatasız yönetebilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "İş Yönetimi ve CRM Entegrasyonu",
              altBaslik: "Ücretsiz",
              aciklama:
                  "Workroute ile işletmenizin teklif, satış, pazarlama ve destek süreçlerini uçtan uca yönetebilir, tekliflerinizi Logo İşbaşı üzerinden otomatik faturalandırabilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/iyzico.png',
              baslik: "Online Tahsilat Entegrasyonu",
              altBaslik: "Ücretsiz",
              aciklama:
                  "Tahsilatlarınızı POS cihazı gerektirmeden kredi/banka kartı ile tek çekim veya taksitli seçenekler sunarak hızlandırabilir, müşterilerinize 7/24 güvenli ödeme ortamı sunabilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "Teknik Servis Takip Entegrasyonu",
              altBaslik: "Ücretsiz",
              aciklama:
                  "Bakım, onarım ve servis hizmeti sonrasındaki faturalandırma, borç-alacak ve ön muhasebe yönetiminizi Logo İşbaşı üzerinden gerçekleştirebilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "Ürün Takip Sistemi Entegrasyonu",
              altBaslik: "Aylık 200 TL",
              aciklama:
                  "ÜTS Entegrasyonuyla ürünlerinizin üretim aşamasından son kullanıcıya kadar olan tüm sürecini takip edebilir, alış-satış faturalarınızı hızlı ve kolayca Sağlık Bakanlığı'na aktarabilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "İş Yönetimi ve CRM Entegrasyonu",
              altBaslik: "Aylık 140 TL",
              aciklama:
                  "MyBasicCRM ile müşterilerinizi çalışanların iş takibini, teklif ve siparişlerinizi yönetebilir, otomaik teklif hazırlayabilir ve Logo İşbaşı ile otomatik faturalandırabilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
            const SizedBox(
              height: 20,
            ),
            EntegrasyonWidget(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              image: 'assets/logo/yengec.png',
              baslik: "Satış Yönetimi ve CRM Entegrasyonu",
              altBaslik: "Aylık 250 TL",
              aciklama:
                  "Müşteri, ürün ve ekip içi yönetimi kolaylıkla gerçekleştirip, teklif ve satış sürecinizi Logo İşbaşı ile entegre bir şekilde otomatik faturalandırabilirsiniz.",
              page: const EntegrasyonScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class EntegrasyonWidget extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final String image;
  final String baslik;
  final String altBaslik;
  final String aciklama;
  final Widget page;

  const EntegrasyonWidget({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.image,
    required this.baslik,
    required this.altBaslik,
    required this.aciklama,
    required this.page,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(page);
      },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
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
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Bu satırı ekledik
              children: [
                Container(
                  width: screenWidth * 0.5,
                  height: screenHeight * 0.12,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(
                      Radius.circular(5.0),
                    ),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(5, 5),
                        blurRadius: 5,
                        color: Colors.grey.shade300,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(image),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 25, 0, 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          baslik,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          altBaslik,
                          style: const TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          aciklama,
                          style: const TextStyle(
                              fontSize: 14, color: Colors.black54),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
