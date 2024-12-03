//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snt/models/numclass.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

import '../models/familyclass.dart';

class Family extends StatelessWidget {
  Family({ this.family});
  Familyy ?family;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff558b37),
      height: 97,
      child: Row(
        children: [
          Container(
            color: Color(0xfffef6db),
            child: Image.asset(family!.image!),
          ),
          Padding(padding: EdgeInsets.only(left: 30),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(family!.jpname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
                Text(family!.enname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
              ],
            ), ),


          Spacer(flex: 1,),
          Padding(padding: EdgeInsets.only(right: 16),
            child:IconButton(onPressed: () async {
              AudioCache.instance = AudioCache(prefix: 'assets/sounds/family_members/');
              final player = AudioPlayer();
              await player.play(AssetSource(family!.sound!));

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