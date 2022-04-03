import 'package:flutter/material.dart';

class richText extends StatefulWidget {
  const richText({Key? key}) : super(key: key);

  @override
  State<richText> createState() => _richTextState();
}

class _richTextState extends State<richText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RichText(
            text: TextSpan(
                text: "Create a new account ",
                style: TextStyle(fontSize: 17, color: Colors.black),
                children: [
              TextSpan(
                  text: "Already have one ?",
                  style: TextStyle(
                      color: Colors.green, fontWeight: FontWeight.bold))
            ])),
      ],
    )));
  }
}
