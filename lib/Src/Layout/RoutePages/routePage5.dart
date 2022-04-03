import 'package:flutter/material.dart';

class routePage5 extends StatefulWidget {
  const routePage5({Key? key}) : super(key: key);

  @override
  State<routePage5> createState() => _routePage1State();
}

class _routePage1State extends State<routePage5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Fifth Page"),
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
