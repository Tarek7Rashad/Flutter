// ignore_for_file: must_be_immutable
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:language_learn/components/CategoryItem.dart';
import 'package:language_learn/screens/Colors_Page.dart';
import 'package:language_learn/screens/Numbers_Page.dart';
import 'package:language_learn/screens/Family_Members_Page.dart';
import 'package:language_learn/screens/Phrases_Page.dart';

class HomePage extends StatelessWidget {
  var appBarColor = Color.fromARGB(255, 56, 74, 83);

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 0, 0),
      appBar: AppBar(
        backgroundColor: appBarColor,
        title: Text(
          'Languages Learning',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: SingleChildScrollView(
          child: Container(
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return NumbersPage();
                      },
                    ));
                  },
                  text: 'Numbers',
                  color: Colors.blueGrey,
                ),
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return FamilyMembers();
                      },
                    ));
                  },
                  text: "Family",
                  color: Colors.blueGrey,
                ),
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return ColorsPage();
                      },
                    ));
                  },
                  text: "Colors",
                  color: Colors.blueGrey,
                ),
                Category(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return PhrasesPage();
                      },
                    ));
                  },
                  text: "Phrases",
                  color: Colors.blueGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
