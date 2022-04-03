import 'package:flutter/material.dart';

class RailThree extends StatefulWidget {
  const RailThree({Key? key}) : super(key: key);

  @override
  State<RailThree> createState() => _RailOneState();
}

class _RailOneState extends State<RailThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Rail Three"),
      ),
    );
  }
}
