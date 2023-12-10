import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class Item {
  final String name;
  final DateTime date;
  final double tutar;
  final String unvan;

  Item(
      {required this.name,
      required this.date,
      required this.tutar,
      required this.unvan});
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
    onPressed: () {},
  ),
  DialogOption(
    id: 2,
    title: 'Ada göre (Z-A)',
    onPressed: () {},
  ),
  DialogOption(
    id: 3,
    title: 'Tarihe göre (En yeni)',
    onPressed: () {},
  ),
  DialogOption(
    id: 4,
    title: 'Tarihe göre (En eski)',
    onPressed: () {},
  ),
  DialogOption(
    id: 5,
    title: 'Tutara göre (En yüksek)',
    onPressed: () {},
  ),
  DialogOption(
    id: 6,
    title: 'Tutara göre (En düşük)',
    onPressed: () {},
  ),
  DialogOption(
    id: 7,
    title: 'Gönderen unvanı (A-Z)',
    onPressed: () {},
  ),
  DialogOption(
    id: 8,
    title: 'Gönderen unvanı (Z-A)',
    onPressed: () {},
  ),
];

class SiralamaIslemi extends StatelessWidget {
  //final List<Item> items;
  final Function(List<Item> sortedItems) onSort;
  final List<int> optionIds;

  const SiralamaIslemi({
    //required this.items,
    required this.onSort,
    required this.optionIds,
  });

  @override
  Widget build(BuildContext context) {
    List<DialogOption> filteredOptions =
        allOptions.where((option) => optionIds.contains(option.id)).toList();

    return SimpleDialog(
      title: const Text(
        'Sıralama',
        style: TextStyle(fontSize: 14),
      ),
      contentPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
        side: BorderSide(
          color: color6,
          width: 1.0,
        ),
      ),
      children: [
        Container(
          decoration: BoxDecoration(
            color: color8,
            border: Border.all(
              color: color6,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: filteredOptions.map((option) {
              return Column(
                children: [
                  ListTile(
                    title: Text(
                      option.title,
                      style: TextStyle(fontSize: 12),
                    ),
                    onTap: option.onPressed,
                  ),
                  if (option != filteredOptions.last)
                    const Divider(
                        height: 1,
                        thickness: 1,
                        indent: 15.0,
                        endIndent:
                            15.0) // Sonuncu eleman hariç diğerlerine Divider ekliyoruz.
                ],
              );
            }).toList(),
          ),
        ),
      ],
    );
  }
}
