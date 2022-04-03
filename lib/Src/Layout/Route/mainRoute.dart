import 'package:app6/Src/Layout/RoutePages/routePage1.dart';
import 'package:app6/Src/Layout/RoutePages/routePage2.dart';
import 'package:app6/Src/Layout/RoutePages/routePage3.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainRoute extends StatefulWidget {
  const mainRoute({Key? key}) : super(key: key);

  @override
  State<mainRoute> createState() => _mainRouteState();
}

class _mainRouteState extends State<mainRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => routePage1()),
                        );
                      },
                      icon: Icon(Icons.send),
                      label: Text("First-page")),
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => routePage2()));
                      },
                      icon: Icon(Icons.send),
                      label: Text("Second-page")),
                ],
              )),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          CupertinoPageRoute(builder: (_) => routePage3()),
                        );
                      },
                      icon: Icon(Icons.send),
                      label: Text("Third-page")),
                ],
              )),
              Expanded(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/fourRoutePage');
                      },
                      icon: Icon(Icons.send),
                      label: Text("Fourth-page")),
                  ElevatedButton.icon(
                      onPressed: () {
                        // if you use this method application will be quit...!

                        Navigator.pushReplacementNamed(
                            context, '/fifthRoutePage');
                      },
                      icon: Icon(Icons.send),
                      label: Text("Fifth-page")),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
