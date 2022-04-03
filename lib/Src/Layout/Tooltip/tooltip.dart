import 'package:flutter/material.dart';

class Mytooltip extends StatefulWidget {
  const Mytooltip({Key? key}) : super(key: key);

  @override
  State<Mytooltip> createState() => _MytooltipState();
}

class _MytooltipState extends State<Mytooltip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Tooltip(message: "This is a button",child: ElevatedButton(onPressed: (){}, child: Text("Tooltip"),)),
      )),
    );
  }
}
