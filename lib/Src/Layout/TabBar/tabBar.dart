import 'package:app6/Src/Layout/TabBar/tab1.dart';
import 'package:app6/Src/Layout/TabBar/tab2.dart';
import 'package:flutter/material.dart';

class tabBar extends StatefulWidget {
  const tabBar({Key? key}) : super(key: key);

  @override
  State<tabBar> createState() => _tabBarState();
}

class _tabBarState extends State<tabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Text("Goditect",style: TextStyle(color: Colors.black),),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.add_box_sharp),
                text: "Box",
              ),
              Tab(
                icon: Icon(Icons.favorite_border),
                text: "Favorite",
              )
            ],
            indicatorColor: Colors.black26,
            labelColor: Colors.green,
              unselectedLabelColor: Colors.black26,
            ),
          ),
          body: TabBarView(children: [tab1(),tab2()]),
        ));
  }
}
