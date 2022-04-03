import 'package:flutter/material.dart';

class animatedAlign extends StatefulWidget {
  const animatedAlign({Key? key}) : super(key: key);

  @override
  State<animatedAlign> createState() => _animatedAlignState();
}

class _animatedAlignState extends State<animatedAlign> {

  var _align = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(

        children: [
          AnimatedAlign(
            curve: Curves.bounceIn,
              duration: Duration(seconds: 10),
              alignment: _align,
              child: Text("Animated Align",style: TextStyle(fontSize: 20),),
       ),
          ElevatedButton(onPressed: (){
            setState(() {
              _align = Alignment.bottomCenter;
            });
          }, child: Text("Click"))
        ],
      )),
    );
  }
}
