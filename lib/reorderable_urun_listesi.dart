//ürünlerin yerini değiştirmek için kullanılır
/*import 'package:flutter/material.dart';

class ReorderableUrunListesi extends StatefulWidget {
  final List<Widget> urunler;

  ReorderableUrunListesi({Key? key, required this.urunler}) : super(key: key);

  @override
  _ReorderableUrunListesiState createState() => _ReorderableUrunListesiState();
}

class _ReorderableUrunListesiState extends State<ReorderableUrunListesi> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      onReorder: (oldIndex, newIndex) {
        setState(() {
          if (newIndex > oldIndex) {
            newIndex -= 1;
          }
          final Widget item = widget.urunler.removeAt(oldIndex);
          widget.urunler.insert(newIndex, item);
        });
      },
      children: widget.urunler
          .asMap()
          .map(
            (index, urun) => MapEntry(
              index,
              ReorderableDragStartListener(
                index: index,
                child: urun,
              ),
            ),
          )
          .values
          .toList(),
    );
  }
}
*/