import 'package:flutter/material.dart';

class responsiveUI extends StatelessWidget {
  const responsiveUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(

                    crossAxisCount: 2,
                    crossAxisSpacing: 5.0,
                    mainAxisSpacing: 5.0,
                  ), itemBuilder: (_,index){
                    return   Container(
                      width: MediaQuery.of(context).size.width/2,
                      height: MediaQuery.of(context).size.height/4,
                      child: Card(
                        child: Align(alignment: Alignment.center,child: Text("MediaQuery "+index.toString())),
                      ),
                    );
                  },itemCount: 30,),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
