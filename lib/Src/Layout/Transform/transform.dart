import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTransform extends StatelessWidget {
  const MyTransform({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
       child: Center(
         child: Transform.rotate(
           angle: pi/5,
           child: Container(
             width: 170,
             height: 170,
             color: Colors.blue,

           ),
         ),
       ),
      ),
    );
  }
}
