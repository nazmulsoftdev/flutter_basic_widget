import 'package:flutter/material.dart';

class Textfield extends StatelessWidget {
  const Textfield({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              maxLength: 12,
              decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                labelText: 'Name',
                hintText: 'Enter your Name',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              maxLength: 30,
              decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                labelText: 'Email',
                hintText: 'Enter your Email',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              maxLength: 6,
              obscureText: true,
              decoration: InputDecoration(
                focusColor: Colors.green,
                border: OutlineInputBorder(),
                labelText: 'Password',
                hintText: 'Enter your Password',
              ),
            ),
            SizedBox(height: 10,),
            Align(alignment: Alignment.centerLeft,child: ElevatedButton(onPressed:(){

            }, child: Icon(Icons.send)))
          ],
        ),
      )),
    );
  }
}
