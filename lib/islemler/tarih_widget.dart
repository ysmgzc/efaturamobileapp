import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CustomDatePickerAltin extends StatefulWidget {
  final String? labelText;

  const CustomDatePickerAltin({Key? key, this.labelText}) : super(key: key);

  @override
  _CustomDatePickerAltinState createState() => _CustomDatePickerAltinState();
}

class _CustomDatePickerAltinState extends State<CustomDatePickerAltin> {
  DateTime? selectedDate; // DateTime değeri nullable olarak tanımlandı

  @override
  void initState() {
    super.initState();
    // selectedDate başlangıç değeri olarak null atanmıştır
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
      width: MediaQuery.of(context).size.width * 0.42,
      height: MediaQuery.of(context).size.height * 0.07,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey),
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade200,
            Colors.grey.shade100,
            Colors.grey.shade50,
            Colors.white70,
          ],
        ),
      ),
      child: Row(
        children: [
          const Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.calendar_month,
              color: yTextColor,
              size: 18,
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
                        color: yTextColor,
                        fontWeight: FontWeight.bold),
                  ),
                Text(
                  selectedDate != null
                      ? DateFormat('dd/MM/yyyy').format(selectedDate!)
                      : DateFormat('dd/MM/yyyy').format(DateTime.now()),
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                    color: yTextColor,
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
