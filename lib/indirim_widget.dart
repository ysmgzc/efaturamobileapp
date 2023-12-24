import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class IndirimWidget extends StatefulWidget {
  final String buttonText;
  final String dialogTitle;
  final String option1Text;
  final String option2Text;
  final IconData? icon;

  IndirimWidget({
    required this.buttonText,
    required this.dialogTitle,
    required this.option1Text,
    required this.option2Text,
    this.icon,
  });

  @override
  _IndirimWidgetState createState() => _IndirimWidgetState();
}

enum Indirim { tutar, oran }

class _IndirimWidgetState extends State<IndirimWidget> {
  TextEditingController dateInput = TextEditingController();
  Indirim? _seciliIndirim = Indirim.tutar;
  final _textFieldController1 = TextEditingController();
  final _textFieldController2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () async {
        await showDialog<void>(
          context: context,
          builder: (BuildContext context) {
            return StatefulBuilder(
              builder: (context, setState) {
                return AlertDialog(
                  title: Text(widget.dialogTitle),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Radio<Indirim>(
                                  value: Indirim.tutar,
                                  groupValue: _seciliIndirim,
                                  onChanged: (Indirim? value) {
                                    if (value != null) {
                                      setState(() {
                                        _seciliIndirim = value;
                                      });
                                    }
                                  },
                                ),
                                Text(
                                  widget.option1Text,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Row(
                              children: [
                                Radio<Indirim>(
                                  value: Indirim.oran,
                                  groupValue: _seciliIndirim,
                                  onChanged: (Indirim? value) {
                                    if (value != null) {
                                      setState(() {
                                        _seciliIndirim = value;
                                      });
                                    }
                                  },
                                ),
                                Text(
                                  widget.option2Text,
                                  style: TextStyle(fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            if (_seciliIndirim == Indirim.tutar)
                              Expanded(
                                child: TextField(
                                  controller: _textFieldController1,
                                  decoration: const InputDecoration(
                                    labelText: "0,00",
                                  ),
                                ),
                              ),
                            if (_seciliIndirim == Indirim.oran)
                              Expanded(
                                child: TextField(
                                  controller: _textFieldController2,
                                  decoration: const InputDecoration(
                                    labelText: "0,00",
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      child: const Text('Vazgeç'),
                      onPressed: () {
                        setState(() {
                          // İptal işlemleri burada gerçekleştirilir
                        });
                      },
                    ),
                    TextButton(
                      child: const Text('Kaydet'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              },
            );
          },
        );
      },
      child: Row(
        children: [
          if (widget.icon != null) // Eğer ikon tanımlı ise göster
            Icon(widget.icon, color: color6),
          Text(
            widget.buttonText,
            style: TextStyle(
                color: color6, fontSize: 14, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
enum TarihAraligi { bugun, dun, son1hafta, son1ay, son1yil }