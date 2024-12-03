import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/phraseclass.dart';

class phrasee extends StatelessWidget {
  phrasee({this.phrase});
  Phrase? phrase;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff50adc7),
      height: 97,
      child: Row(
        children: [
          // Container(
          //   color: Color(0xfffef6db),
          //   child: Image.asset(phrase!.image!),
          // ),
          Padding(padding: EdgeInsets.only(left: 30),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(phrase!.jpname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
                Text(phrase!.enname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
              ],
            ), ),


          Spacer(flex: 1,),
          Padding(padding: EdgeInsets.only(right: 16),
            child:IconButton(onPressed: () async {
              AudioCache.instance = AudioCache(prefix: 'assets/sounds/phrases/');
              final player = AudioPlayer();
              await player.play(AssetSource(phrase!.sound!));

            },
              icon: Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 30,

              ),),
          ),



        ],
      ),

    );
  }
}
