import 'package:flutter/material.dart';

class Myexpansion extends StatelessWidget {
  const Myexpansion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: ExpansionTile(
          title: Text("Show you date of Birth"),
          trailing: Icon(Icons.arrow_circle_down),
          textColor: Colors.green,
          children: [
            Container(
              color: Colors.blueGrey,
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.chat),
                  Icon(Icons.call),
                  Icon(Icons.contact_mail_sharp),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
