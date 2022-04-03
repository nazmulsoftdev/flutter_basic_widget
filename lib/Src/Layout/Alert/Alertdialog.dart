import 'package:flutter/material.dart';

class Alertdialog extends StatelessWidget {
  const Alertdialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Are you sure ?"),
                      content: Text("do you want exist this app ?"),
                      actions: [
                        TextButton(onPressed: () {}, child: Text("OK")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Cancel"))
                      ],
                    );
                  });
            },
            child: Text("Alert Dialog")),
      ),
    );
  }
}
