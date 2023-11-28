import 'package:efaturamobileapp/constants.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBarToplam extends StatelessWidget {
  final String firstText;
  final String secondText;

  const CustomBottomAppBarToplam({
    Key? key,
    required this.firstText,
    required this.secondText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: SizedBox(
        height: 50.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    firstText,
                    style: const TextStyle(
                      color: color2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    height: 3.0,
                    color: Colors.grey,
                    width: 40.0,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    secondText,
                    style: const TextStyle(
                      color: color2,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Container(
                    height: 3.0,
                    color: Colors.grey,
                    width: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
