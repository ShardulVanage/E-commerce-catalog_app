import 'package:catalog/page/home_page.dart';
import 'package:flutter/material.dart';

import 'page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     // home: Homepage(),
      routes: {
       "/": (context) => Homepage(),
       "/login":(context) => Loginpage()
      },
    );
  }
}
