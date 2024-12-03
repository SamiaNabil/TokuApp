
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  Category({this.color, this.text,this.onTap});
  Color? color;
  String? text;
  Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.centerLeft,
        color: color,
        width: double.infinity,
        height: 65,
        padding: EdgeInsets.only(left: 16),
        child: Text(
          text!,
          style: TextStyle(fontSize: 18, color: Colors.white,fontFamily: 'Pacifico'),
        ),
      ),
    );
  }
}
