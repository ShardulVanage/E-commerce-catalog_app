//import 'package:catalog/page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primaryColor: Colors.blue[900],
        
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      home: Loginpage(),
    );
  }
}
