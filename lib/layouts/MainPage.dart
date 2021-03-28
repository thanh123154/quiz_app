import 'package:flutter/material.dart';
import 'package:quiz_app/layouts/HomePage.dart';
import 'package:quiz_app/layouts/ProfilePage.dart';
import 'package:quiz_app/layouts/SearchPage.dart';
import 'package:quiz_app/utils/myColors.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;

  List<Widget> _bodyOptions = [
    HomePage(),
    SearchPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text("Good morning, Boss!"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Profile"),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: primaryColor,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (val) {
          setState(() {
            _currentIndex = val;
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      body: _bodyOptions.elementAt(_currentIndex),
    );
  }
}
