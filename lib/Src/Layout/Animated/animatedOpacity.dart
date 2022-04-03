import 'package:flutter/material.dart';

class animatedOpacity extends StatefulWidget {
  const animatedOpacity({Key? key}) : super(key: key);

  @override
  State<animatedOpacity> createState() => _animatedOpacityState();
}

class _animatedOpacityState extends State<animatedOpacity> {
  double _opacity1 = 1;
  double _opacity2 = 0;

  bool actionVal = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          setState(() {
            actionVal = !actionVal;
          });
        },
        child: Text(actionVal ? "Hide" : "Show"),
      ),
      body: SafeArea(
          child: Center(
        child: AnimatedOpacity(
          opacity: actionVal ? _opacity1 : _opacity2,
          duration: Duration(seconds: 5),
          child: Card(
            child: ListTile(
              title: Text("Nazmul Islam ador"),
              subtitle: Text("Hi there ! I am a software developer...."),
              leading: Icon(Icons.account_circle),
            ),
          ),
        ),
      )),
    );
  }
}
