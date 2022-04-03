import 'package:flutter/material.dart';

class buttonList extends StatelessWidget {
  const buttonList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Flat Button"),
                  SizedBox(
                    height: 5,
                  ),
                  FlatButton(
                      color: Colors.red,
                      onPressed: () {},
                      child: Text(
                        "Click",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
            )),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Raised Button"),
                  SizedBox(
                    height: 5,
                  ),
                  RaisedButton(
                    color: Colors.green,
                    hoverColor: Colors.red,
                    onPressed: () {},
                    child: Text(
                      "Click",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Floating Button"),
                  SizedBox(
                    height: 5,
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.red,
                    onPressed: () {},
                    child: Icon(Icons.add),
                  )
                ],
              ),
            )),
            Expanded(
                child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Elevate Button"),
                  SizedBox(
                    height: 5,
                  ),
                  ElevatedButton(

                      onPressed: () {},
                      child: Container(
                        width: 70,
                        alignment: Alignment.center,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text("Login"), Icon(Icons.login)],
                        ),
                      ))
                ],
              ),
            )),

            Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Icon Button"),
                      SizedBox(
                        height: 5,
                      ),
                     IconButton(color: Colors.green,onPressed:(){}, icon: Icon(Icons.local_grocery_store_outlined))
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
