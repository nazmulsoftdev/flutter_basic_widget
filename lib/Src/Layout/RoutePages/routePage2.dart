import 'package:flutter/material.dart';

class routePage2 extends StatefulWidget {
  const routePage2({Key? key}) : super(key: key);

  @override
  State<routePage2> createState() => _routePage1State();
}

class _routePage1State extends State<routePage2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Second Page"),
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
