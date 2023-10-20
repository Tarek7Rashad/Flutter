import 'package:flutter/material.dart';
import 'package:language_learn/components/Cards.dart';
import 'package:language_learn/models/Models.dart';

class NumbersPage extends StatelessWidget {
  const NumbersPage({Key? key}) : super(key: key);
  final List<numberModel> numbers = const [
    numberModel(
        image: 'assets/Images/Numbers/0.jpeg',
        name: 'Zero',
        sound: 'sounds/numbers/0.wav'),
    numberModel(
        image: 'assets/Images/Numbers/1.webp',
        name: 'One',
        sound: 'sounds/numbers/one.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/2.webp',
        name: 'Two',
        sound: 'sounds/numbers/two.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/3.jpeg',
        name: 'Three',
        sound: 'sounds/numbers/three.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/4.jpeg',
        name: 'Four',
        sound: 'sounds/numbers/four.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/5.webp',
        name: 'Five',
        sound: 'sounds/numbers/five.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/6.jpeg',
        name: 'Six',
        sound: 'sounds/numbers/six.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/7.jpeg',
        name: 'Seven',
        sound: 'sounds/numbers/seven.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/8.jpeg',
        name: 'Eight',
        sound: 'sounds/numbers/eight.mp3'),
    numberModel(
        image: 'assets/Images/Numbers/9.jpeg',
        name: 'Nine',
        sound: 'sounds/numbers/nine.mp3'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 56, 74, 83),
        title: Text(
          'Numbers',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) => NumberCard(
          number: numbers[index],
          color: Colors.blueGrey,
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
