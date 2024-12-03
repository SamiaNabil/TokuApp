import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/phrase.dart';
import '../models/phraseclass.dart';

class PhrasePage extends StatelessWidget {
  PhrasePage({super.key});
  Phrase one=Phrase(jpname: "Kōdoku suru koto o wasurenaide kudasai",enname: "don't forget to subscribe",sound: "dont_forget_to_subscribe.wav");
  Phrase two=Phrase(jpname: "Watashi wa puroguramingu ga daisukidesu",enname: "i love programming",sound: "i_love_programming.wav");
  Phrase three=Phrase(jpname: "Puroguramingu wa kantandesu",enname: "programming is easy",sound: "programming_is_easy.wav");
  Phrase four=Phrase(jpname: "Doko ni iku no",enname: "where are you going",sound: "where_are_you_going.wav");
  Phrase five=Phrase(jpname: "Anata no namae wa nanidesu ka",enname: "what's your name",sound: "what_is_your_name.wav");
  Phrase six=Phrase(jpname: "Watashi wa anime ga daisukidesu",enname: "i love anime",sound: "i_love_anime.wav");
  Phrase seven=Phrase(jpname: "Go kibun wa ikagadesu ka",enname: "how are you feeling",sound: "how_are_you_feeling.wav");
  Phrase eight=Phrase(jpname: "Hai, kimasu",enname: "yes i am coming",sound: "yes_im_coming.wav");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffef6db),
        appBar: AppBar(
          title: Text('Phrase',style: TextStyle(color: Colors.white,fontFamily: 'Pacifico'),),
          backgroundColor: Color(0XFF46322B),
        ),
        body:ListView(
          children: [
            phrasee(phrase:one
            ),
            phrasee(phrase: two,
            ),
            phrasee(phrase:three
            ),
            phrasee(
              phrase: four,
            ),
            phrasee(
              phrase: five,
            ),
            phrasee(
              phrase: six,
            ),
            phrasee(
              phrase: seven,
            ),
            phrasee(
              phrase: eight,
            ),


          ],
        )
    );
  }
}
