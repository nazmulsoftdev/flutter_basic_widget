import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  final HeroLogo;
  const HeroPage({Key? key,required  this.HeroLogo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: "1",
            child: Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/images/"+HeroLogo.toString()), fit: BoxFit.cover)),
            ),
          )
        ],
      )),
    );
  }
}
