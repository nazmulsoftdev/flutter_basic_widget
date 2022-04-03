import 'package:flutter/material.dart';

class textAnimated extends StatefulWidget {
  const textAnimated({Key? key}) : super(key: key);

  @override
  State<textAnimated> createState() => _textAnimatedState();
}

class _textAnimatedState extends State<textAnimated> {

  double _textSize = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
                curve: Curves.easeInCirc,
                child: Text("Flutter Text Animated",),
                style: TextStyle(fontSize: _textSize,color: Colors.redAccent),
                duration: Duration(seconds: 10),onEnd: (){setState(() {
                  _textSize=20;
                });},),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              setState(() {
                _textSize = 30;
              });
            }, child: Text("Click"))
          ],
        ),
      )),
    );
  }
}
