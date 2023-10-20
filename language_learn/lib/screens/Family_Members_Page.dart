import 'package:flutter/material.dart';
import 'package:language_learn/components/Cards.dart';
import 'package:language_learn/models/Models.dart';

class FamilyMembers extends StatelessWidget {
  const FamilyMembers({Key? key}) : super(key: key);
  final List<familyMemberModel> familyMembers = const [
    familyMemberModel(
      image: 'assets/Images/FamilyMembers/grandfather.jpg',
      name: 'Grand Father',
      sound: 'sounds/numbers/0.wav',
    ),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/grandmother.png',
        name: 'Grand Mother',
        sound: 'sounds/numbers/one.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/father.webp',
        name: 'Father',
        sound: 'sounds/numbers/two.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/mother.jpg',
        name: 'Mother',
        sound: 'sounds/numbers/three.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/son.jpg',
        name: 'Son',
        sound: 'sounds/numbers/four.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/daughter.jpg',
        name: 'Daughter',
        sound: 'sounds/numbers/five.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/brother.jpg',
        name: 'Brother',
        sound: 'sounds/numbers/six.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/wife.jpeg',
        name: 'Wife',
        sound: 'sounds/numbers/seven.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/sister.jpg',
        name: 'Sister',
        sound: 'sounds/numbers/eight.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/uncle.jpg',
        name: 'Uncle',
        sound: 'sounds/numbers/nine.mp3'),
    familyMemberModel(
        image: 'assets/Images/FamilyMembers/aunt.jpg',
        name: 'Aunt',
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
          'Family Members',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: familyMembers.length,
        itemBuilder: (context, index) => FamilyMembersCard(
          familyMember: familyMembers[index],
          color: Color.fromARGB(193, 176, 213, 240),
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
