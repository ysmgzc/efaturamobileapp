import 'package:efaturamobileapp/bottom_app_bar_design.dart';
import 'package:efaturamobileapp/bottom_app_bar_desing_save.dart';
import 'package:flutter/material.dart';

class YengecScreen extends StatelessWidget {
  const YengecScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            Container(
              height: screenHeight,
              width: screenWidth,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 2),
                    blurRadius: 5,
                    color: Colors.grey.shade300,
                  ),
                ],
              ),
              child: Align(
                alignment: Alignment.topCenter,
                child: Column(
                  children: [
                   const SizedBox(
                      height: 50,
                    ),
                    Container(
                      width: screenWidth*0.8,
                      height: screenHeight * 0.2,
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
                        padding: const EdgeInsets.fromLTRB(20, 25, 20, 25),
                        child: Image.asset(
                          'assets/logo/yengec.png',
                        ),
                      ),
                    ),
                   const SizedBox(
                        height: 40,
                    ),
                   const Text("Entegrasyon Paketinin İçeriği Nedir?",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                  const  SizedBox(
                        height: 20,
                    ),
                   const Text( "'Yengeç e-Ticaret Entegrasyonu ile; Trendyol, Hepsiburada, n11, Akakçe ve PttAvm gibi pazaryerlerinde ve İdeasoft, Opencart, Woocommerce, Wix, Shopify gibi e-ticaret altyapısı ile çalışan internet sitenizde gerçekleşen satışların otomatik olarak ön muhasebe ve e-fatura programı olan Logo İşbaşı'na otomatik aktarılması sağlanır.",
        textAlign: TextAlign.center,style: TextStyle(fontSize: 14)),
                   const  SizedBox(
                        height: 20,
                    ),
                      const Text(" e-Ticaret platformlarında gerçekleşen satışların Logo İşbaşı'na otomatik aktarılmasından sonra müşterinize e-fatura/e-arşiv faturanızı anında gönderebilir ve stok takibinizi hatasız gerçekleştirebilirsiniz.",
                      textAlign: TextAlign.center,style: TextStyle(fontSize: 14)),
                   const  SizedBox(
                        height: 20,
                    ),
                    const Text("Entegrasyon paketinden aylık 119,90 TL ya da yıllık 1200 TL ödeyerek yararlanabilirsiniz. Ödeme gerçekleştirmeden önce entegrasyon paketini 15 gün boyunca ücretsiz deneyebilirsiniz. ",
                    textAlign: TextAlign.center,style: TextStyle(fontSize: 14)),
                  const SizedBox(
                        height: 20,
                    ),
                  const Text("Entegrasyon paketi hakkında detaylı bilgi almak ve 15 gün boyunca ücretsiz denemek için tıklayınız.",
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 14)),
                  const SizedBox(
                        height: 20,
                    ),
                  const Text("Pazaryeri entegrasyonları Yengec.co tarafından gerçekleştirilmektedir.",
                  textAlign: TextAlign.center,style: TextStyle(fontSize: 14)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
        bottomNavigationBar: BottomAppBarDesign(
        onSaveButtonPressed: () {},
        saveButtonBackgroundColor: Colors.blue,
        saveButtonText: "BİLGİ ALMAK İSTİYORUM",
          ),
    );
  }
}
