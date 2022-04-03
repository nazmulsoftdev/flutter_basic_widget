import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class riveAnimate extends StatelessWidget {
  const riveAnimate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: RiveAnimation.asset("assets/animated/fight.riv")),
      )),
    );
  }
}
