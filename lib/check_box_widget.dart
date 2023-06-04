import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;

  const CheckBoxWidget({
    required this.value,
    required this.onChanged,
  });

  @override
  _CheckBoxWidgetState createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      checkColor: Colors.white,
      side: MaterialStateBorderSide.resolveWith(
        (states) => const BorderSide(width: 1.0, color: Colors.grey),
      ),
      value: _value,
      onChanged: (bool? newValue) {
        setState(() {
          _value = newValue ?? false;
          widget.onChanged(_value);
        });
      },
    );
  }
}
