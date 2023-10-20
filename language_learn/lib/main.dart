import 'package:flutter/material.dart';
import 'package:language_learn/screens/Home_Page_Screen.dart';

void main() {
  runApp(LearnApp());
}

class LearnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
          width: screenWidth, height: screenHeight, child: HomePage()),
    );
  }
}
