import 'package:flutter/material.dart';

class splashHome extends StatefulWidget {
  const splashHome({Key? key}) : super(key: key);

  @override
  State<splashHome> createState() => _splashHomeState();
}

class _splashHomeState extends State<splashHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Welcome to Home Screen",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
      )
    );
  }
}
