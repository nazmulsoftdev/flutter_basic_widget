import 'package:flutter/material.dart';

class container extends StatelessWidget {
  const container({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var shopIMage =
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRo0r23WdEZuxfY9PqRLyz509ZxoyLtrX_QsQ&usqp=CAU";
    return Scaffold(
      body: Center(
        child: Container(
          width: 230,
          height: 230,
          transform: Matrix4.rotationZ(0.2),
          child: Column(
            children: [
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/shop.png"),
                        fit: BoxFit.contain)),
              )),
            ],
          ),
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.green,
              ),
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(color: Colors.black26, offset: Offset(2.0, 6.0))
              ]),
        ),
      ),
    );
  }
}
