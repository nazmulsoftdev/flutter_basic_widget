import 'package:flutter/material.dart';

class radio extends StatefulWidget {
  const radio({Key? key}) : super(key: key);

  @override
  State<radio> createState() => _radioState();
}

enum BestTutorSite { javatpoint, w3schools, tutorialandexample }

class _radioState extends State<radio> {

  BestTutorSite _site = BestTutorSite.javatpoint;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 500,
            height: 300,
            child: Card(
              elevation: 5,
              child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ListTile(
                     title: Text("Kotlin"),
                     leading: Radio(value: false, groupValue: true, onChanged:(value){}),
                   ),
                   ListTile(
                    title: Text("React Native"),
                    leading: Radio(value: false, groupValue: true, onChanged:(value){}),
                  ),
                   ListTile(
                    title: Text("Flutter"),
                    leading: Radio(value: false, groupValue: true, onChanged:(value){}),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
