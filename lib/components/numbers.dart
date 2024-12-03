//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snt/models/numclass.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class Numbers extends StatelessWidget {
  Numbers({ this.num});
  Num ?num;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFF8F00),
      height: 97,
      child: Row(
        children: [
          Container(
            color: Color(0xfffef6db),
            child: Image.asset(num!.image!),
          ),
          Padding(padding: EdgeInsets.only(left: 30),
            child:Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(num!.jpname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
                Text(num!.enname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
              ],
            ), ),


          Spacer(flex: 1,),
          Padding(padding: EdgeInsets.only(right: 16),
            child:IconButton(onPressed: () async {
              AudioCache.instance = AudioCache(prefix: 'assets/sounds/numbers/');
              final player = AudioPlayer();
              await player.play(AssetSource(num!.sound!));

            },
              icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,

            ),),
          ),



        ],
      ),

    );
  }
}

