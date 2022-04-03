import 'package:flutter/material.dart';

class Mydismiss extends StatefulWidget {
  const Mydismiss({Key? key}) : super(key: key);

  @override
  State<Mydismiss> createState() => _MydismissState();
}

class _MydismissState extends State<Mydismiss> {
  final skillName = [
    "Html",
    "CSS",
    "JavaScript",
    "React",
    "Node js",
    "Flutter",
    "React Native",
    "Kotlin",
    "C#",
    "Go",
    "Python"
  ];
  final skillDis = "Learn this technology more easiest way...";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  itemBuilder: (_, index) {
                    final list = index;
                    return Dismissible(
                      key: UniqueKey(),
                      onDismissed: (value) {
                        setState(() {});
                      },
                      background: Container(
                        color: Colors.green,
                        child: Icon(Icons.delete),
                      ),
                      secondaryBackground: Container(
                        color: Colors.redAccent,
                        child: Icon(Icons.delete_forever),
                      ),
                      child: Card(
                        child: ListTile(
                          title: Text(skillName[index].toString()),
                          subtitle: Text(skillDis.toString()),
                          leading: Icon(
                            Icons.code,
                            color: Colors.orange,
                          ),
                        ),
                      ),
                    );
                  },
                  itemCount: skillName.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
