import 'package:flutter/material.dart';

class ShowDialogEkle {
  static void showCustomDialog(BuildContext context, List<DialogOption> dialogOptions, String companyName) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  companyName,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
               const SizedBox(height: 10), 
              ],
            ),
          ),
          content: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(5.0),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 0),
                  blurRadius: 20,
                  color: Colors.grey.shade300,
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
              const  SizedBox(height: 20),
                for (var option in dialogOptions)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextButton(
                        child: Text(
                          option.title,
                          style: const TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        onPressed: option.onPressed,
                      ),
                      const Divider(endIndent: 10, indent: 10),
                    ],
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DialogOption {
  final String title;
  final VoidCallback onPressed;

  DialogOption({required this.title, required this.onPressed});
}
