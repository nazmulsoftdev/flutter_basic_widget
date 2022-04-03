import 'package:flutter/material.dart';

class RailTwo extends StatefulWidget {
  const RailTwo({Key? key}) : super(key: key);

  @override
  State<RailTwo> createState() => _RailOneState();
}

class _RailOneState extends State<RailTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Rail Two"),
      ),
    );
  }
}
