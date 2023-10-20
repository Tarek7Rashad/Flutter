import 'package:flutter/material.dart';
import 'package:language_learn/components/Cards.dart';
import 'package:language_learn/models/Models.dart';

class ColorsPage extends StatelessWidget {
  const ColorsPage({Key? key}) : super(key: key);
  final List<colorModel> colors = const [
    colorModel(
      image: 'assets/Images/Colors/Black_colour.jpg',
      name: 'Black',
      sound: 'sounds/colors/black.mp3',
    ),
    colorModel(
        image: 'assets/Images/Colors/blue.jpeg',
        name: 'Blue',
        sound: 'sounds/colors/blue.mp3'),
    colorModel(
        image: 'assets/Images/Colors/brown.jpeg',
        name: 'Brown',
        sound: 'sounds/colors/brown.mp3'),
    colorModel(
        image: 'assets/Images/Colors/green.jpeg',
        name: 'Green',
        sound: 'sounds/colors/green.mp3'),
    colorModel(
        image: 'assets/Images/Colors/orange.jpeg',
        name: 'Orange',
        sound: 'sounds/colors/orange.mp3'),
    colorModel(
        image: 'assets/Images/Colors/Pink.jpeg',
        name: 'Pink',
        sound: 'sounds/colors/pink.mp3'),
    colorModel(
        image: 'assets/Images/Colors/purple.jpeg',
        name: 'Purple',
        sound: 'sounds/colors/purple.mp3'),
    colorModel(
        image: 'assets/Images/Colors/red.jpeg',
        name: 'Red',
        sound: 'sounds/colors/red.mp3'),
    colorModel(
        image: 'assets/Images/Colors/white.png',
        name: 'White',
        sound: 'sounds/colors/white.mp3'),
    colorModel(
        image: 'assets/Images/Colors/yellow.jpeg',
        name: 'Yellow',
        sound: 'sounds/colors/yellow.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 56, 74, 83),
        title: Text(
          'Colors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) => CardColor(
          cardColor: colors[index],
          color: Color.fromARGB(153, 96, 125, 139),
        ),
        /*
        // instead of that i will use ListView.builder
        children: 
           getList(numbers),
        */
      ),
    );
  }
  /*
// instead of that i will use ListView.builder
  List<Widget> getList(List<Number> numbers) {
    List<Widget> numbersCardsList = [];
    for (int i = 0; i < numbers.length; i++) {
      numbersCardsList.add(NumberCard(number: numbers[i]));
    }
    return numbersCardsList;
  }
  */
}
