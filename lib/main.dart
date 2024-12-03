import 'package:flutter/material.dart';

import 'Screens/homepage.dart';

void main() {
  runApp(LanguageApp());
}

class LanguageApp extends StatelessWidget {
  const LanguageApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),

    );
  }
}
//


