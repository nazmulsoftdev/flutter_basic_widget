import 'package:flutter/material.dart';

class dataGet1 extends StatefulWidget {
  final myImage, myTitle, myDis;

  const dataGet1({Key? key, this.myImage, this.myTitle, this.myDis})
      : super(key: key);

  @override
  State<dataGet1> createState() => _dataGet1State();
}

class _dataGet1State extends State<dataGet1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            elevation: 5,
            pinned: true,
            title: Text(
              widget.myTitle,
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            backgroundColor: Color(0xffdff9fb),
            flexibleSpace: FlexibleSpaceBar(
              title: Image.asset(
                "assets/images/" + widget.myImage.toString(),
                width: 60,
                height: 60,
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.myDis.toString(),
                style: TextStyle(
                  height: 3,
                  fontSize: 17,
                  wordSpacing: 5,
                ),
              ),
            )
          ]))
        ],
      )),
    );
  }
}
