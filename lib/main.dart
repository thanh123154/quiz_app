import 'package:flutter/material.dart';
import 'package:quiz_app/layouts/MainPage.dart';
import 'package:quiz_app/layouts/SignupPage.dart';
import 'package:quiz_app/layouts/loginPage.dart';
import 'package:quiz_app/utils/myColors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        iconTheme: IconThemeData(
          color: primaryColor,
        ),
        primarySwatch: primarySwatchColor,
        primaryColor: primaryColor,
        scaffoldBackgroundColor: primaryBgColor,
        backgroundColor: primaryBgColor,
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(
            headline6: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
        '/main': (context) => MainPage(),
      },
    );
  }
}
