import 'package:flutter/material.dart';

class snack extends StatefulWidget {
  const snack({Key? key}) : super(key: key);

  @override
  State<snack> createState() => _snackState();
}

class _snackState extends State<snack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Builder(builder: (context) {
          return ElevatedButton(
            onPressed: () {
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  content: Text("I am snack"),
                  duration: Duration(seconds: 10),
                  backgroundColor: Colors.redAccent,
                  elevation: 10,
                  action: SnackBarAction(label: "Ok", onPressed: () {}),
                ),
              );
            },
            child: Text("SnackBar"),
          );
        }),
      )),
    );
  }
}
