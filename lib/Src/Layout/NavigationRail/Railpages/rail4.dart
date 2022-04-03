import 'package:flutter/material.dart';

class RailFour extends StatefulWidget {
  const RailFour({Key? key}) : super(key: key);

  @override
  State<RailFour> createState() => _RailOneState();
}

class _RailOneState extends State<RailFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Rail Four"),
      ),
    );
  }
}
