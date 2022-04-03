import 'package:flutter/material.dart';

class toast extends StatelessWidget {
  const toast({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: TextButton(onPressed: (){

        }, child: Text("Click Toast")),
      )),
    );
  }
}
