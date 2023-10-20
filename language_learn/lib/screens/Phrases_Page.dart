import 'package:flutter/material.dart';
import 'package:language_learn/components/Cards.dart';
import 'package:language_learn/models/Models.dart';

class PhrasesPage extends StatelessWidget {
  const PhrasesPage({Key? key}) : super(key: key);
  final List<phrasesModel> phrases = const [
    phrasesModel(
      phrase: 'I am Learning English',
      sound: 'sounds/phrases/IamLearningEnglish.mp3',
    ),
    phrasesModel(
      phrase: 'How Can I Help You?',
      sound: 'sounds/phrases/HowCanIHelpYou.mp3',
    ),
    phrasesModel(
      phrase: 'What Do You Do?',
      sound: 'sounds/phrases/WhatDoYouDo.mp3',
    ),
    phrasesModel(
      phrase: 'I am Sorry !',
      sound: 'sounds/phrases/IamSorry.mp3',
    ),
    phrasesModel(
      phrase: 'Nice To Meet You',
      sound: 'sounds/phrases/NiceToMeetYou.mp3',
    ),
    phrasesModel(
      phrase: 'Oh, Never Mind',
      sound: 'sounds/phrases/OhNeverMind.mp3',
    ),
    phrasesModel(
      phrase: 'Thanks So Much !',
      sound: 'sounds/phrases/ThanksSoMuch.mp3',
    ),
    phrasesModel(
      phrase: 'Excuse Me',
      sound: 'sounds/phrases/ExcuseMe.mp3',
    ),
    phrasesModel(
      phrase: 'Where Are You From?',
      sound: 'sounds/phrases/WhereAreYouFrom.mp3',
    ),
    phrasesModel(
      phrase: 'Could You Repeat That, Please',
      sound: 'sounds/phrases/CouldYouRepeatThatPlease.mp3',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 56, 74, 83),
        title: Text(
          'Phrases',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: phrases.length,
        itemBuilder: (context, index) => PhrasesCard(
          phraseOfCard: phrases[index],
          color: Color.fromARGB(212, 96, 125, 139),
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
