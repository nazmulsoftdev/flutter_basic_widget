import 'package:flutter/material.dart';

class HomeDev extends StatefulWidget {
  const HomeDev({Key? key}) : super(key: key);

  @override
  State<HomeDev> createState() => _HomeDevState();
}

class _HomeDevState extends State<HomeDev> {
  Future<bool> _onWillPop() async {
    return (await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit the App'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.of(context).pop(false),
                child: Text('No'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: Text('Yes'),
              ),
            ],
          ),
        )) ??
        false;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          body: SafeArea(
              child: Center(
            child: Text("This is Home Page"),
          )),
        ),
        onWillPop: _onWillPop);
  }
}
