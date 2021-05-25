//import 'package:catalog/page/home_page.dart';
import 'package:catalog/Theme/theme.dart';
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MYTheme.lighttheme(context),
      initialRoute: "/home",
      routes: {
        "/": (context) => Loginpage(),
        "/home": (context) => Homepage(),
        "/login": (context) => Loginpage(),
      },
    );
  }
}
