import 'package:catalog/page/home_page.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 25,
          ),
          Image.asset(
            "assets/images/loginpage.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Text(
              "Welcome",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 15,
          ),
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
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 45,
                ),

                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.push(
                        context, MaterialPageRoute(builder: (_) => Homepage()));
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changeButton ? 50 : 150,
                    height: 40,
                    child: Center(
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text(
                              'Login',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 21),
                            ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(
                        changeButton ? 50 : 8,
                      ),
                    ),
                  ),
                )

                // ElevatedButton(
                //   onPressed: () {
                //     Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //         builder: (_) => Homepage(),
                //       ),
                //     );
                //   },
                //   child: Text('Login'),
                //   style: TextButton.styleFrom(
                //     minimumSize: Size(160, 50),
                //   ),
                // ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
