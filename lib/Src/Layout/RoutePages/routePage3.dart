import 'package:flutter/material.dart';

class routePage3 extends StatefulWidget {
  const routePage3({Key? key}) : super(key: key);

  @override
  State<routePage3> createState() => _routePage1State();
}

class _routePage1State extends State<routePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Third Page"),
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
