import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MYTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primaryColor: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            textTheme: Theme.of(context).textTheme),
      );
}
