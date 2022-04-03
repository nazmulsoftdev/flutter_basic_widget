import 'package:flutter/material.dart';

class gridList extends StatelessWidget {
  const gridList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  height: 2800,
                  child: GridView.builder(
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        maxCrossAxisExtent: 310.0,
                        crossAxisSpacing: 10.0,
                        mainAxisSpacing: 10.0,
                      ),
                      itemCount: 30,
                      itemBuilder: (_, index) {
                        return Container(
                          width: 200,
                          height: 200,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images/homeimage.png",
                                width: 100,
                                height: 100,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text("Grid Serial: " + index.toString())
                            ],
                          ),
                          decoration: BoxDecoration(
                              color: Color(0xff22a6b3),
                              borderRadius: BorderRadius.circular(6)),
                        );
                      }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
