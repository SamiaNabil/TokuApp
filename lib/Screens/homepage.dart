import 'package:flutter/material.dart';
import 'package:snt/Screens/color_page.dart';
import 'package:snt/Screens/phrasepage.dart';
import '../components/category.dart';
import 'family_page.dart';
import 'numberspage.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: Color(0XFF46322B),
        title: Text(
          'Toku',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'Pacifico'
          ),
        ),
      ),
      body: Column(
        children: [
          Category(
            text: "Numbers",
            color: Color(0xFFFF8F00),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (Context) {
                return NumbersPage();
              }));
            },
          ),
          Category(text: "Family Members", color: const Color(0xff558b37),onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (Context){
              return FamilyPage();
            }));
          },),
          Category(text: "Colors", color: const Color(0xff79359f), onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (Context) {
              return ColorPage();
            }));
          }),
          Category(text: "Phrases", color: const Color(0xff50adc7),onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (Context) {
              return PhrasePage();
            }));
          }),
        ],
      ),
    );
  }
}
