import 'package:flutter/material.dart';

import '../components/numbers.dart';
import '../models/numclass.dart';
import '../models/numclass.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({super.key});
   Num one=Num(image: "assets/images/numbers/number_one.png",jpname: "Ichi",enname: "One",sound: "number_one_sound.mp3");
   Num two=Num(image: "assets/images/numbers/number_two.png",jpname: "Ni",enname: "Two",sound: "number_two_sound.mp3");
   Num three=Num(image: "assets/images/numbers/number_three.png",jpname: "San",enname: "Three",sound: "number_three_sound.mp3");
   Num four=Num(image: "assets/images/numbers/number_four.png",jpname: "Shi",enname: "Four",sound: "number_four_sound.mp3");
   Num five=Num(image: "assets/images/numbers/number_five.png",jpname: "Go",enname: "Five",sound: "number_five_sound.mp3");
   Num six=Num(image: "assets/images/numbers/number_six.png",jpname: "Roku",enname: "Six",sound: "number_six_sound.mp3");
   Num seven=Num(image: "assets/images/numbers/number_seven.png",jpname: "Sebun",enname: "Seven",sound: "number_seven_sound.mp3");
   Num eight=Num(image: "assets/images/numbers/number_eight.png",jpname: "Hashi",enname: "Eight",sound: "number_eight_sound.mp3");
   Num nine =Num(image: "assets/images/numbers/number_nine.png",jpname: "Kyu",enname: "Nine",sound: "number_nine_sound.mp3");
   Num ten =Num(image: "assets/images/numbers/number_ten.png",jpname: "Ju",enname: "ten",sound: "number_ten_sound.mp3");



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        title: Text('Numbers',style: TextStyle(color: Colors.white,fontFamily: 'Pacifico'),),
        backgroundColor: Color(0XFF46322B),
      ),
      body:ListView(
        children: [
          Numbers(num:one
          ),
          Numbers(num: two,
          ),
          Numbers(num:three
          ),
          Numbers(
            num: four,
          ),
          Numbers(
            num: five,
          ),
          Numbers(
            num: six,
          ),
          Numbers(
            num: seven,
          ),
          Numbers(
            num: eight,
          ),
          Numbers(
            num: nine,
          ),
          Numbers(
            num: ten,
          ),

        ],
      )

    );
  }
}

