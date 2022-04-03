import 'package:flutter/material.dart';

class sliverAppbar extends StatelessWidget {
  const sliverAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.blueGrey,
            expandedHeight: 180,
            title: Text("Nazmul Islam"),
            centerTitle: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Image.asset(
                "assets/images/gitimage.png",
                width: 50,
                height: 50,
              ),
              centerTitle: true,
            ),
            actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
          ),
          SliverList(
              delegate: SliverChildListDelegate(<Widget>[
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
            myList(),
          ]))
        ],
      )),
    );
  }
}

Card myList() {
  return Card(
    elevation: 5,
    child: ListTile(
      title: Text("Learn Flutter"),
      subtitle: Text("Flutter is most popular dart base framework"),
      leading: Icon(Icons.account_circle),
      trailing: Icon(Icons.code),
    ),
  );
}
