import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TarihWidget {
  static Future<void> selectDate(BuildContext context, TextEditingController dateInput) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      dateInput.text = DateFormat('dd/MM/yyyy').format(pickedDate);
    }
  }

  static GestureDetector dateInputField({required BuildContext context, required TextEditingController dateInput, required double widthFactor, required double heightFactor}) {
    return GestureDetector(
      onTap: () => selectDate(context, dateInput),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SizedBox(
            width: constraints.maxWidth * widthFactor,
            height: constraints.maxHeight * heightFactor,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                dateInput.text.isNotEmpty
                    ? dateInput.text
                    : DateFormat('  dd/MM/yyyy').format(DateTime.now()),
                style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
              ),
            ),
          );
        }
      ),
    );
  }
}
