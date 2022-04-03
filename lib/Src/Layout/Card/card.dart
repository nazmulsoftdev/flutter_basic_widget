import 'package:flutter/material.dart';

class card extends StatelessWidget {
  const card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child:  Container(
         width: 180,
         height: 180,
         child: Card(
           elevation: 5,
           shadowColor: Colors.redAccent,
           shape: RoundedRectangleBorder(
               borderRadius: BorderRadius.circular(7)
           ),
           child: Align(alignment: Alignment.center,child: Text("Card Widget")),

         ),
       ),
    ),);
  }
}
