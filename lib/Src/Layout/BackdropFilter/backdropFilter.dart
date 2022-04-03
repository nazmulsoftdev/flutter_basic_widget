import 'dart:ui';

import 'package:flutter/material.dart';

class BackDrop extends StatefulWidget {
  const BackDrop({Key? key}) : super(key: key);

  @override
  State<BackDrop> createState() => _BackDropState();
}

class _BackDropState extends State<BackDrop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Container(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 300,
                height: 200,
                color: Colors.blueGrey,
              ),
              BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),child: Container(
                color: Colors.white.withOpacity(0.5),
              ),)
            ],
          ),
        ),
      )),
    );
  }
}
