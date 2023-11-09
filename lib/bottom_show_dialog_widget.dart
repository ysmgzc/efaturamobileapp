//ekranın altında açılan showdialog
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomIconButton extends StatelessWidget {
  final List<SheetOption> options;

  const CustomIconButton({Key? key, required this.options}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (BuildContext context) {
            return FractionallySizedBox(
              child: Wrap(
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      'Seçenekler',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                  ...options
                      .map((option) => _buildListTile(context, option))
                      .toList(),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildListTile(BuildContext context, SheetOption option) {
    return ListTile(
      leading: option.icon,
      title: Text(option.text),
      onTap: () {
        if (option.page != null) {
          Get.to(() => option.page!);
        } else if (option.onTap != null) {
          option.onTap!();
        }
      },
    );
  }
}

class SheetOption {
  final Widget icon;
  final String text;
  final Widget? page;
  final VoidCallback? onTap;

  SheetOption({
    required this.icon,
    required this.text,
    this.page,
    this.onTap,
  }) : assert(
            (page != null && onTap == null) || (onTap != null && page == null),
            ' ');
}
