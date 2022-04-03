import 'package:app6/Src/Layout/NavigationRail/Railpages/rail1.dart';
import 'package:app6/Src/Layout/NavigationRail/Railpages/rail2.dart';
import 'package:app6/Src/Layout/NavigationRail/Railpages/rail3.dart';
import 'package:app6/Src/Layout/NavigationRail/Railpages/rail4.dart';
import 'package:flutter/material.dart';

class MyRail extends StatefulWidget {
  const MyRail({Key? key}) : super(key: key);

  @override
  State<MyRail> createState() => _MyRailState();
}

class _MyRailState extends State<MyRail> {
  int _selectedIndex = 0;
  final RailArr = [RailOne(), RailTwo(), RailThree(), RailFour()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          NavigationRail(
            backgroundColor: Colors.black,
            elevation: 5,
            labelType: NavigationRailLabelType.selected,
            selectedLabelTextStyle: TextStyle(color: Colors.white),
            minWidth: 10,
            destinations: [
              NavigationRailDestination(
                  icon: Icon(
                    Icons.home,
                    color: Colors.greenAccent,
                  ),
                  label: Text("Home")),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.greenAccent,
                  ),
                  label: Text("Favorite")),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.add_moderator,
                    color: Colors.greenAccent,
                  ),
                  label: Text("Auth")),
              NavigationRailDestination(
                  icon: Icon(
                    Icons.settings,
                    color: Colors.greenAccent,
                  ),
                  label: Text("Setting"))
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (val) {
              setState(() {
                _selectedIndex = val;
              });
            },
          ),
          Expanded(
            child: Container(
              child: RailArr[_selectedIndex],
            ),
          )
        ],
      )),
    );
  }
}
