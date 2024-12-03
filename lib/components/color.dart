import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snt/models/Colorclass.dart';

class Colorrr extends StatelessWidget {
  Colorrr({ this.color});
  CColor ?color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff79359f),
      height: 97,
      child: Row(
        children: [
          Container(
            color: Color(0xfffef6db),
            child: Image.asset(color!.image!),
          ),
          Padding(padding: EdgeInsets.only(left: 30),
            child:Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(color!.jpname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
                Text(color!.enname!,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Pacifico'),),
              ],
            ), ),


          Spacer(flex: 1,),
          Padding(padding: EdgeInsets.only(right: 16),
            child:IconButton(onPressed: () async {
              AudioCache.instance = AudioCache(prefix: 'assets/sounds/colors/');
              final player = AudioPlayer();
              await player.play(AssetSource(color!.sound!));

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
