import 'package:flutter/material.dart';

class routePage4 extends StatefulWidget {
  const routePage4({Key? key}) : super(key: key);

  @override
  State<routePage4> createState() => _routePage1State();
}

class _routePage1State extends State<routePage4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Fourth Page"),
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
