import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String email = "", password = "";
  @override
  Widget build(BuildContext context) {
    Widget textItem(String text, bool condition) {
      return Container(
        width: MediaQuery.of(context).size.width - 60,
        height: 60,
        color: Colors.black,
        child: TextFormField(
          obscureText: condition,
          style: TextStyle(color: Colors.white),
          onChanged: (txt) {
            if (text == "Email...") {
              email = txt.toString();
            }
            if (text == "Password...") {
              password = txt.toString();
            }
          },
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white)),
            labelText: text,
            labelStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(color: Colors.white)),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Sign up",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: MediaQuery.of(context).size.width - 60,
              height: 60,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey, width: 1)),
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage(
                        "Images/3.png",
                      ),
                      height: 25,
                      width: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with google",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 60,
              child: Card(
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide(color: Colors.grey)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("Images/4.jpg"),
                      width: 25,
                      height: 25,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue with Mobile",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "or",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 10,
            ),
            textItem("Email...", false),
            SizedBox(
              height: 10,
            ),
            textItem("Password...", true),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () {
                setState(() {
                  print(email);
                  print(password);
                  email = "";
                  password = "";
                });
              },
              child: Container(
                width: MediaQuery.of(context).size.width - 90,
                height: 60,
                child: Center(
                  child: Text(
                    "Sign up",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  gradient: LinearGradient(
                    colors: [Colors.red, Colors.orange, Colors.red],
                  ),
                ),
              ),
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 60,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "If you don't have a account?",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    " Login",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
