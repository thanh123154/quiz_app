import 'package:flutter/material.dart';
import 'package:quiz_app/utils/myColors.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height / 4,
          left: 30,
          right: 30,
        ),
        children: [
          Center(
            child: Text(
              "Quiz App",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 60.0, bottom: 10.0),
            child: Text(
              "Username",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: TextFormField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 30.0, bottom: 10.0),
            child: Text(
              "Password",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Material(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
            child: TextFormField(
              onChanged: (val) {},
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.0, bottom: 20.0),
            child: TextButton(
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    side: BorderSide(color: Colors.red),
                  ),
                ),
                backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(0, 0, 0, 0.25)),
                padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 15.0)),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/main');
              },
              child: Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Center(
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/signup');
              },
              child: Text(
                "Create a new account",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
