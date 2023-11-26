import 'package:flutter/material.dart';

class ReorderableExample extends StatefulWidget {
  const ReorderableExample({Key? key}) : super(key: key);

  @override
  State<ReorderableExample> createState() => _ReorderableListViewExampleState();
}

class _ReorderableListViewExampleState extends State<ReorderableExample> {
  final List<int> _items = List<int>.generate(50, (int index) => index);

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    return MyReorderableListView(
      items: _items,
      oddItemColor: oddItemColor,
      evenItemColor: evenItemColor,
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex -= 1;
          }
          final int item = _items.removeAt(oldIndex);
          _items.insert(newIndex, item);
        });
      },
    );
  }
}

class MyReorderableListView extends StatelessWidget {
  final List<int> items;
  final Color oddItemColor;
  final Color evenItemColor;
  final Function(int oldIndex, int newIndex) onReorder;

  MyReorderableListView({
    required this.items,
    required this.oddItemColor,
    required this.evenItemColor,
    required this.onReorder,
  });

  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: <Widget>[
        for (int index = 0; index < items.length; index += 1)
          ListTile(
            key: Key('$index'),
            tileColor: items[index].isOdd ? oddItemColor : evenItemColor,
            title: Text('Item ${items[index]}'),
          ),
      ],
      onReorder: onReorder,
    );
  }
}
