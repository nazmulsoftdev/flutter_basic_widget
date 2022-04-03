import 'package:flutter/material.dart';

class Listview extends StatelessWidget {
  const Listview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 1800,
                child: ListView.builder(physics: ScrollPhysics(),itemBuilder: (_,index){
                  return  Card(
                    elevation: 4,
                    child: ListTile(
                      leading: Icon(Icons.account_circle,color: Colors.red,),
                      title: Text("Flutter developer "+index.toString()),
                      subtitle: Text("Dear developer keep learning..."),
                      trailing: Icon(Icons.code),
                    ),
                  );
                },itemCount: 20,),
              )
            ],
          ),
        ),
      ),
    );
  }
}
