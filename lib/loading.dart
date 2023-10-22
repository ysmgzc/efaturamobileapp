import 'package:flutter/material.dart';
class LoadingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Arkaplan
          Container(
            color: Colors.white, 
            width: double.infinity,
            height: double.infinity,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                CircularProgressIndicator(), 
                SizedBox(height: 20), 
              ],
            ),
          ),
        ],
      ),
    );
  }
}