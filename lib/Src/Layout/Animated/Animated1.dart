import 'dart:async';

import 'package:flutter/material.dart';

class Animated1 extends StatefulWidget {
  const Animated1({Key? key}) : super(key: key);

  @override
  State<Animated1> createState() => _Animated1State();
}

class _Animated1State extends State<Animated1> {
  double _height = 200;
  double _width = 300;

  // make a function for animated

  void animatedFun1() {
    setState(() {
      _height = 150;
      _width = 150;
    });
  }

  void animatedFun2() {
    setState(() {
      _height = 200;
      _width = 300;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: AnimatedContainer(
          curve: Curves.bounceInOut,
          duration: Duration(seconds: 20),
          width: _width,
          height: _height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Animated Container",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              SizedBox(
                height: 5,
              ),
              ElevatedButton(
                  onPressed: () {
                    animatedFun1();
                  },
                  child: Text("Click"))
            ],
          ),
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          onEnd:animatedFun2 ,
        ),
      )),
    );
  }
}
