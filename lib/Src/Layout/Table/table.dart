import 'package:flutter/material.dart';

class table extends StatelessWidget {
  const table({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(child: Center(
        child: Container(
          height: 300,
          width: 500,
          child: Card(
            elevation: 5,
            child: Table(
              border: TableBorder.all( color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2),
              children: [
                TableRow(
                  children: [
                    Column(children:[Text('Web', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('Android', style: TextStyle(fontSize: 20.0))]),
                    Column(children:[Text('IOS', style: TextStyle(fontSize: 20.0))]),
                  ]
                ),
                TableRow(
                  children: [
                    Column(children:[Text('React')]),
                    Column(children:[Text('Java')]),
                    Column(children:[Text('Swift')]),
                  ]
                ),
                TableRow(
                    children: [
                      Column(children:[Text('Vue')]),
                      Column(children:[Text('React Native')]),
                      Column(children:[Text('React Native')]),
                    ]
                ),
                TableRow(
                    children: [
                      Column(children:[Text('Angular')]),
                      Column(children:[Text('Flutter')]),
                      Column(children:[Text('Flutter')]),
                    ]
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
