import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class ActiveSwitch extends StatefulWidget {
  final bool showDialog;
  final Function(bool)? onChanged;

  const ActiveSwitch({Key? key, this.showDialog = false, this.onChanged})
      : super(key: key);

  @override
  _ActiveSwitchState createState() => _ActiveSwitchState();
}

class _ActiveSwitchState extends State<ActiveSwitch> {
  bool _isActive = false;

  Future<void> _showDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Seçenekler'),
          content: const Text('seçenekler screen'),
          actions: <Widget>[
            TextButton(
              child: const Text('Tamam'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _handleChanged(bool value) {
    setState(() {
      _isActive = value;
      if (widget.showDialog && _isActive) {
        _showDialog(context);
      }
    });

    if (widget.onChanged != null) {
      widget.onChanged!(_isActive);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      value: _isActive,
      onChanged: _handleChanged,
      activeColor: color6,
    );
  }
}
