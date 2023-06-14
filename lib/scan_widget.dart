import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

class BarkodTara extends StatefulWidget {
  const BarkodTara({Key? key}) : super(key: key);

  @override
  _BarkodTaraState createState() => _BarkodTaraState();
}

class _BarkodTaraState extends State<BarkodTara> {
  @override
  void initState() {
    super.initState();
    startScanning();
  }

  void startScanning() async {
    await scanBarcode();
  }

  Future<void> scanBarcode() async {
    try {
      final barcode = await FlutterBarcodeScanner.scanBarcode(
        '#ff6666',
        'İPTAL ET',
        true,
        ScanMode.BARCODE,
      );

      if (!mounted) return;

      if (barcode == '-1') {
        _showRetryDialog('Tarama iptal edildi');
      } else {
        _showSuccessDialog(barcode);
      }
    } catch (ex) {
      _showRetryDialog('Barkod tarama işleminiz başarısızdır, lütfen tekrar deneyiniz');
    }
  }

  void _showRetryDialog(String message) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: const Text('Tekrar Tara', style: TextStyle(color: Colors.green, fontSize: 16)),
              onPressed: () {
                Navigator.of(context).pop();
                startScanning();
              },
            ),
            TextButton(
              child: const Text('Kapat', style: TextStyle(color: Colors.green, fontSize: 16)),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showSuccessDialog(String barcode) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Tarama Başarılı'),
          content: Text(barcode),
          actions: <Widget>[
            TextButton(
              child: const Text('Tekrar Tara', style: TextStyle(color: Colors.green, fontSize: 16)),
              onPressed: () {
                Navigator.of(context).pop();
                startScanning();
              },
            ),
            TextButton(
              child: const Text('Kapat', style: TextStyle(color: Colors.green, fontSize: 16)),
              onPressed: () {
                SystemNavigator.pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
