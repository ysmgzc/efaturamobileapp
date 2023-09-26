import 'package:flutter/material.dart';

class Item {
  final String name;
  final DateTime date;
  final double tutar;
  final String unvan;

  Item({required this.name, required this.date, required this.tutar, required this.unvan});
}

class DialogOption {
  final int id;
  final String title;
  final VoidCallback onPressed;

  DialogOption({
    required this.id,
    required this.title,
    required this.onPressed,
  });
}


List<DialogOption> allOptions = [
  DialogOption(
    id: 1,
    title: 'Ada göre (A-Z)',
    onPressed: () { },
  ),
  DialogOption(
    id: 2,
    title: 'Ada göre (Z-A)',
    onPressed: () { },
  ),
  DialogOption(
    id: 3,
    title: 'Tarihe göre (En yeni)',
    onPressed: () { },
  ),
  DialogOption(
    id: 4,
    title: 'Tarihe göre (En eski)',
    onPressed: () { },
  ),
  DialogOption(
    id: 5,
    title: 'Tutara göre (En yüksek)',
    onPressed: () {  },
  ),
  DialogOption(
    id: 6,
    title: 'Tutara göre (En düşük)',
    onPressed: () { },
  ),
  DialogOption(
    id: 7,
    title: 'Gönderen unvanı (A-Z)',
    onPressed: () {},
  ),
  DialogOption(
    id: 8,
    title: 'Gönderen unvanı (Z-A)',
    onPressed: () {  },
  ),
];

class SiralamaIslemi extends StatelessWidget {
  //final List<Item> items;
  final Function(List<Item> sortedItems) onSort;
  final List<int> optionIds;

  SiralamaIslemi({
    //required this.items,
    required this.onSort,
    required this.optionIds,
  });

  @override
  Widget build(BuildContext context) {
    List<DialogOption> filteredOptions = allOptions.where((option) => optionIds.contains(option.id)).toList();

    return SimpleDialog(
      title: Text('Sıralama'),
      contentPadding: EdgeInsets.all(10), 
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 5.0,
                spreadRadius: 1.0,
              ),
            ],
            border: Border.all(color: Colors.grey.shade200, width: 1.0),
          ),
          child: Column(
            children: filteredOptions.map((option) {
              return Column(
                children: [
                  ListTile(
                    title: Text(option.title),
                    onTap: option.onPressed,
                  ),
                  if (option != filteredOptions.last) Divider(height: 1, thickness: 1, indent: 15.0, endIndent: 15.0) // Sonuncu eleman hariç diğerlerine Divider ekliyoruz.
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
