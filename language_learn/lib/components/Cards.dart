import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learn/models/Models.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.number, required this.color});
  final numberModel number;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            // padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                number.image,
                width: 70,
                fit: BoxFit.fill,
              ),
              title: Text(number.name),
              subtitle: Text('Sound'),
              trailing: IconButton(
                // splashColor: Colors.white,
                onPressed: () {
                  final player = AudioPlayer();
                  player.play(AssetSource(number.sound));

                  //play sound
                },
                icon: const Icon(
                  Icons.play_arrow,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////
class FamilyMembersCard extends StatelessWidget {
  const FamilyMembersCard(
      {super.key, required this.familyMember, required this.color});
  final familyMemberModel familyMember;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            // padding: EdgeInsets.all(10),
            child: ListTile(
              leading: Image.asset(
                familyMember.image,
                width: 70,
                fit: BoxFit.fill,
              ),
              title: Text(familyMember.name),
              // subtitle: Text('Sound'),
              // trailing: IconButton(
              //   // splashColor: Colors.white,
              //   onPressed: () {
              //     final player = AudioPlayer();
              //     player.play(AssetSource(familyMember.sound));

              //     //play sound
              //   },
              //   icon: const Icon(
              //     Icons.play_arrow,
              //     size: 30,
              //   ),
              // ),
            ),
          ),
        ),
      ),
    );
  }
}

//////////////////////////////////////////////////////////////////////////////
class CardColor extends StatelessWidget {
  const CardColor({super.key, required this.cardColor, required this.color});
  final colorModel cardColor;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            // padding: EdgeInsets.all(10),
            child: ListTile(
                leading: Image.asset(
                  cardColor.image,
                  width: 70,
                  fit: BoxFit.fill,
                ),
                title: Text(cardColor.name),
                subtitle: Text('Sound'),
                trailing: IconButton(
                  // splashColor: Colors.white,
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(cardColor.sound));

                    //play sound
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////
///
class PhrasesCard extends StatelessWidget {
  const PhrasesCard(
      {super.key, required this.phraseOfCard, required this.color});
  final phrasesModel phraseOfCard;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.symmetric(horizontal: 5),
      child: Align(
        child: Card(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Container(
            alignment: Alignment.center,
            height: double.infinity,
            // padding: EdgeInsets.all(10),
            child: ListTile(
                leading: Icon(Icons.spatial_audio_off),
                title: Text(
                  phraseOfCard.phrase,
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Sound'),
                trailing: IconButton(
                  // splashColor: Colors.white,
                  onPressed: () {
                    final player = AudioPlayer();
                    player.play(AssetSource(phraseOfCard.sound));

                    //play sound
                  },
                  icon: const Icon(
                    Icons.play_arrow,
                    size: 30,
                  ),
                )),
          ),
        ),
      ),
    );
  }
}
