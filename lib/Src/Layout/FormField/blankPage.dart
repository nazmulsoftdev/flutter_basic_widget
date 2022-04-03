import 'package:flutter/material.dart';

class blankPage extends StatelessWidget {
  const blankPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("You are Welcome "),
        ),
      ),
    );
  }
}
