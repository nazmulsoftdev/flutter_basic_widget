import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({Key? key}) : super(key: key);

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  var _value = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Slider(
            label: "Hi",
            thumbColor: Colors.green,
              inactiveColor: Colors.redAccent,
              activeColor: Colors.deepPurple,
              min:0,
              max: 100,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
          Align(
            child: Text("Number: " + _value.toInt().toString()),
          )
        ],
      )),
    );
  }
}
