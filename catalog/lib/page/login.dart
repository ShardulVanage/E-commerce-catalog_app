import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(children: [
        SizedBox(
          height: 25,
        ),
        Image.asset(
          "assets/images/loginpage.png",
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 10,
        ),
        Center(
          child: Text(
            "Welcome",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ),
      SizedBox(height: 20,),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
              TextFormField(
            decoration: InputDecoration(
              hintText: "Enter Username",
              labelText: "Username",
            ),
          ),
          SizedBox(height: 20,),
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              hintText: "Enter Password",
              labelText: "Password",
            
            ),
          ),
          SizedBox(height: 25,),

          ElevatedButton(onPressed: (){},
           child: Text('Login'),
           style:  TextButton.styleFrom()
          ),
          ],
        ),
      )
      ]),
    );
  }
}
