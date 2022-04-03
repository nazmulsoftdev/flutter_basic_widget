import 'package:flutter/material.dart';

class routePage1 extends StatefulWidget {
  const routePage1({Key? key}) : super(key: key);

  @override
  State<routePage1> createState() => _routePage1State();
}

class _routePage1State extends State<routePage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("First Page"),
      ),
      body: SafeArea(
          child: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("go Back"),
        ),
      )),
    );
  }
}
