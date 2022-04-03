import 'package:flutter/material.dart';

class MyExpanded extends StatelessWidget {
  const MyExpanded({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.green,
                    child: Text("Section-1"))),
            Expanded(
                flex: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.red,
                    child: Text("Section-1"))),
            Expanded(
                flex: 1,
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    color: Colors.deepPurple,
                    child: Text("Section-1"))),
          ],
        ),
      ),
    );
  }
}
