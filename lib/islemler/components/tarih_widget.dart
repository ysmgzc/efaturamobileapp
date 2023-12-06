import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePickerAltin extends StatefulWidget {
  final String? labelText;
  final double width;
  final double height;

  const CustomDatePickerAltin({
    Key? key,
    this.labelText,
    this.width = 0.42,
    this.height = 0.07,
  }) : super(key: key);

  @override
  _CustomDatePickerAltinState createState() => _CustomDatePickerAltinState();
}

class _CustomDatePickerAltinState extends State<CustomDatePickerAltin> {
  DateTime? selectedDate;

  @override
  void initState() {
    super.initState();
  }

  Future<void> _showDatePicker() async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * widget.width,
      height: MediaQuery.of(context).size.height * widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color6),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/icons/newicon/aramatakvimicon.png',
              color: color6,
              width: 18,
              height: 18,
            ),
          ),
          GestureDetector(
            onTap: () => _showDatePicker(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (widget.labelText != null)
                  Text(
                    widget.labelText!,
                    style: const TextStyle(
                        fontSize: 13,
                        color: color6,
                        fontWeight: FontWeight.bold),
                  ),
                Text(
                  selectedDate != null
                      ? DateFormat('dd/MM/yyyy').format(selectedDate!)
                      : DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: color6,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
