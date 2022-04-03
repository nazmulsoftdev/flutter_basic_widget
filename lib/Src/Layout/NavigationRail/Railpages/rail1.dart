import 'package:flutter/material.dart';

class RailOne extends StatefulWidget {
  const RailOne({Key? key}) : super(key: key);

  @override
  State<RailOne> createState() => _RailOneState();
}

class _RailOneState extends State<RailOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Rail One"),
      ),
    );
  }
}
