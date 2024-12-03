import 'package:flutter/material.dart';
import 'package:snt/components/family.dart';
import 'package:snt/models/familyclass.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({super.key});
  Familyy one=Familyy(image: "assets/images/family_members/family_father.png",jpname: "Chichioya",enname: "father",sound: "father.wav");
  Familyy two=Familyy(image: "assets/images/family_members/family_daughter.png",jpname: "Musume",enname: "daughter",sound: "daughter.wav");
  Familyy three=Familyy(image: "assets/images/family_members/family_grandfather.png",jpname: "Sofu",enname: "grand father",sound: "grand father.wav");
  Familyy four=Familyy(image: "assets/images/family_members/family_mother.png",jpname: "Hahaoya",enname: "mother",sound: "mother.wav");
  Familyy five=Familyy(image: "assets/images/family_members/family_grandmother.png",jpname: "Sobo",enname: "grand mother",sound: "grand mother.wav");
  Familyy six=Familyy(image: "assets/images/family_members/family_older_brother.png",jpname: "Ani",enname: "older brother",sound: "older bother.wav");
  Familyy seven=Familyy(image: "assets/images/family_members/family_older_sister.png",jpname: "Ane",enname: "older sister",sound: "older sister.wav");
  Familyy eight=Familyy(image: "assets/images/family_members/family_son.png",jpname: "Musuko",enname: "son",sound: "son.wav");
  Familyy nine =Familyy(image: "assets/images/family_members/family_younger_brother.png",jpname: "Otōto",enname: "younger brother",sound: "younger brohter.wav");
  Familyy ten =Familyy(image: "assets/images/family_members/family_younger_sister.png",jpname: "Imōto",enname: "younger sister",sound: "younger sister.wav");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xfffef6db),
        appBar: AppBar(
          title: Text('Family Members',style: TextStyle(color: Colors.white,fontFamily: 'Pacifico'),),
          backgroundColor: Color(0XFF46322B),
        ),
        body:ListView(
          children: [
            Family(family:one
            ),
            Family(family: two,
            ),
            Family(family:three
            ),
            Family(
              family: four,
            ),
            Family(
              family: five,
            ),
            Family(
              family: six,
            ),
            Family(
              family: seven,
            ),
            Family(
              family: eight,
            ),
            Family(
              family: nine,
            ),
            Family(
              family: ten,
            ),

          ],
        )
    );
  }
}
