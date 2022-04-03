import 'package:app6/Src/Layout/OnboardingScreen/HomeDev.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class MyOnboarding extends StatefulWidget {
  const MyOnboarding({Key? key}) : super(key: key);

  @override
  State<MyOnboarding> createState() => _MyOnboardingState();
}

class _MyOnboardingState extends State<MyOnboarding> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
            title: "Welcome to new world",
            body:
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate",
            image: Image.asset(
              "assets/images/undrow1.png",
            )),
        PageViewModel(
            title: "Welcome to new world",
            body:
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate",
            image: Image.asset("assets/images/undrow2.png")),
        PageViewModel(
            title: "Welcome to new world",
            body:
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate",
            image: Image.asset("assets/images/undrow3.png")),
        PageViewModel(
            title: "Welcome to new world",
            body:
                "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate",
            image: Image.asset("assets/images/undrow4.png"))
      ],
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (_) => HomeDev()));
      },
      done: Text(
        "Done",
        style: TextStyle(color: Colors.greenAccent),
      ),
      showSkipButton: true,
      skip: Text(
        "Skip",
        style: TextStyle(color: Colors.cyan),
      ),
      showNextButton: false,
      dotsDecorator: DotsDecorator(
          activeColor: Colors.cyan,
          activeSize: Size(20.0, 10.0),
          activeShape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
    );
  }
}
