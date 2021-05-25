import 'package:catalog/page/drawer.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        
        title: Center(
          child: Padding(
            padding: const EdgeInsets.only(
              right: 50,
            ),
            child: Text(
              "Catalog App",
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
      drawer: DrawerScreen(),
    );
  }
}
