/*import 'package:flutter/material.dart';
class CustomWidget extends StatelessWidget {
  final String avatarText;
  final String tedarikciAdi;
  final String? lokasyon;
  final String paraBirimi;
  final String durumu;
   // final VoidCallback onTap;

  const CustomWidget({
    Key? key,
    this.avatarText = '',
    this.tedarikciAdi = '',
    this.lokasyon,
    this.paraBirimi = '',
    this.durumu = '',
      //  required this.onTap,
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:  () {
                                  List<DialogOption> dialogOptions = [
                                    DialogOption(
                                      title: 'Düzenle',
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MusteriDuzenleScreen(),
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "İşlem Listesi",
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MusteriIslemListesiScreen(),
                              ));
                                      },
                                    ),
                                     DialogOption(
                                      title: "Tahsilat Ekle",
                                      onPressed: () {
                                         Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const TahsilatMakbuzuEkle(),
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "Ödeme Ekle",
                                      onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const MusterilerVeTedarikcilerOdemeEkle(),
                              ));
                                      },
                                    ),
                                    DialogOption(
                                      title: "Virman",
                                      onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const VirmanEkle(),
                              ));
                                      },
                                    ),
                                        DialogOption(
                                      title: "Borç & Alacak Ekle",
                                      onPressed: () {
                                 Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const BorcAlacakEkle(),
                              ));
                                      },
                                    ),
                                        DialogOption(
                                      title: "Çek Girişi",
                                      onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const CekGirisiEkle(),
                              ));
                                      },
                                    ),
                                  ];
                                  ShowDialogEkle.showCustomDialog(context, dialogOptions, 'Sıralama');
                                },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  child: Text(
                    avatarText.substring(0, 1).toUpperCase(),
                    style: const TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.black,
                ),
                const SizedBox(width: 20.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tedarikciAdi,
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                    Text(
                      lokasyon ?? '',
                      style: const TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    paraBirimi,
                    style: const TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    durumu,
                    style: const TextStyle(color: Colors.black, fontSize: 14),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
*/