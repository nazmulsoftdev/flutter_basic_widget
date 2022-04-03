import 'package:app6/pages/page1.dart';
import 'package:app6/pages/page2.dart';
import 'package:app6/pages/page3.dart';
import 'package:app6/pages/page4.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {

  int _currentIndex = 0;
  final NavPages = [Page1(),Page2(),Page3(),Page4()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (value){
          setState(() {
           _currentIndex = value;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border),label: "Favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.music_note),label: "Music"),
          BottomNavigationBarItem(icon: Icon(Icons.place),label: "Place"),
          BottomNavigationBarItem(icon: Icon(Icons.fiber_new_sharp),label: "News"),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.green,

      ),
      body:NavPages[_currentIndex],
    );
  }
}

