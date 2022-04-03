import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytext extends StatelessWidget {
  const Mytext({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("React developer",style: GoogleFonts.raleway(fontSize: 20),),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Node developer",style: GoogleFonts.playfairDisplay(fontSize: 20),),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text("Flutter developer",style: TextStyle(fontSize: 20,fontFamily: 'Raleway'),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
