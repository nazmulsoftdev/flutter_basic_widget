import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Animate extends StatelessWidget {
  const Animate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      backgroundColor: Colors.white54,
        title: Lottie.asset("assets/animated/smile.json",width: 120,height: 120),
        centerTitle: true,
      ),
      body: SafeArea(child: Column(children: [
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.center,
            child: Text("This is Lottie Animation",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
          ),
        ),
        Expanded(
          flex: 5,
          child: Container(
            alignment: Alignment.center,
            child: Lottie.network("https://assets1.lottiefiles.com/packages/lf20_l4fgppor.json"),
          ),
        )
      ],)),
    );
  }
}
