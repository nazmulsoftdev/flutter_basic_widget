import 'package:flutter/material.dart';

class animatedPosition extends StatefulWidget {
  const animatedPosition({Key? key}) : super(key: key);

  @override
  State<animatedPosition> createState() => _animatedPositionState();
}

class _animatedPositionState extends State<animatedPosition> {


  double _left = 0;
  double _top = 0;
  var _color = Colors.green;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Stack(
                children: [
                  AnimatedPositioned(
                      left: _left,
                      top: _top,
                      child:  Container(
                        width: 50.1,
                        height: 50.1,
                        decoration: BoxDecoration(
                            color: _color,
                            borderRadius: BorderRadius.circular(50.0)
                        ),
                      ), duration: Duration(seconds: 10),
                  onEnd: (){
                        setState(() {
                           _top = 0;
                          _left = 0;

                        });
                  },
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            ElevatedButton(onPressed:(){
              setState(() {
                _left = 70;
                _top=30;


              });
            }, child: Text("Animated Position"))
          ],
        ),
      )),
    );
  }
}
