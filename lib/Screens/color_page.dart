import 'dart:ui';

import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:snt/components/color.dart';
import 'package:snt/models/Colorclass.dart';

class ColorPage extends StatelessWidget {
  ColorPage({super.key});
  CColor one=CColor(image: "assets/images/colors/color_black.png",jpname: "Kokushoku",enname: "black",sound: "black.wav");
  CColor two=CColor(image: "assets/images/colors/color_brown.png",jpname: "Chairo",enname: "brown",sound: "brown.wav");
  CColor three=CColor(image: "assets/images/colors/color_dusty_yellow.png",jpname: "Karā _ dasuti _ ierō",enname: "dusty_yellow",sound: "dusty yellow.wav");
  CColor four=CColor(image: "assets/images/colors/color_gray.png",jpname: "Gurē",enname: "gray",sound: "gray.wav");
  CColor five=CColor(image: "assets/images/colors/color_green.png",jpname: "Midori",enname: "green",sound: "green.wav");
  CColor six=CColor(image: "assets/images/colors/color_red.png",jpname: "Aka",enname: "red",sound: "red.wav");
  CColor seven=CColor(image: "assets/images/colors/color_white.png",jpname: "Shiro",enname: "white",sound: "white.wav");
  CColor eight=CColor(image: "assets/images/colors/yellow.png",jpname: "Kiiro",enname: "yellow",sound: "yellow.wav");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffef6db),
        appBar: AppBar(
          title: Text('Colors',style: TextStyle(color: Colors.white,fontFamily: 'Pacifico'),),
          backgroundColor: Color(0XFF46322B),
        ),
        body:ListView(
          children: [
            Colorrr(color:one
            ),
            Colorrr(color: two,
            ),
            Colorrr(color:three
            ),
            Colorrr(
              color: four,
            ),
            Colorrr(
              color: five,
            ),
            Colorrr(
              color: six,
            ),
            Colorrr(
              color: seven,
            ),
            Colorrr(
              color: eight,
            ),


          ],
        )
    );
  }
}
