import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({Key? key}) : super(key: key);

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

  var answer = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
              child: Container(
            width: 500,
            child: Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    Text(
                      "Which is programming language ?",
                      style: TextStyle(fontSize: 19),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "HTML",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.redAccent,
                              value: this.isChecked1,
                              onChanged: (value) {
                                setState(() {
                                  this.isChecked1 = value!;
                                });
                              })
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "CSS",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.redAccent,
                              value: this.isChecked2,
                              onChanged: (value) {
                                setState(() {
                                  this.isChecked2 = value!;
                                });
                              })
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "JavaScript",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.redAccent,
                              value: this.isChecked3,
                              onChanged: (value) {
                                setState(() {
                                  this.isChecked3 = value!;
                                });
                              })
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
          Expanded(
              child: Container(
            child: Column(
              children: [
                ElevatedButton(onPressed: () {}, child: Text("Show answer")),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ))
        ],
      )),
    );
  }
}
