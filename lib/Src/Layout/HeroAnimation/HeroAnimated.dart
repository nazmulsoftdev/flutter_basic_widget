import 'package:app6/Src/Layout/HeroAnimation/HeroPage.dart';
import 'package:flutter/material.dart';

class HeroAnimated extends StatefulWidget {
  const HeroAnimated({Key? key}) : super(key: key);

  @override
  State<HeroAnimated> createState() => _HeroAnimatedState();
}

class _HeroAnimatedState extends State<HeroAnimated> {
  var ImageHero = "react.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Hero(
            tag: "1",
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (_) => HeroPage(HeroLogo: ImageHero)),
                );
              },
              child: Card(
                elevation: 5,
                child: ListTile(
                  title: Text("Hero Animation"),
                  subtitle: Text("Watch this animation"),
                  leading: Image.asset("assets/images/react.png"),
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
