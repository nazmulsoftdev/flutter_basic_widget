import 'package:flutter/material.dart';

class tab1 extends StatelessWidget {
  const tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(child: Text("Tab one"),)),
    );
  }
}
