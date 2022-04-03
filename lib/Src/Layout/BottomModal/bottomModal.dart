import 'package:flutter/material.dart';

class MyModal extends StatefulWidget {
  const MyModal({Key? key}) : super(key: key);

  @override
  State<MyModal> createState() => _MyModalState();
}

class _MyModalState extends State<MyModal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){
            showModalBottomSheet(context: context, builder:(_){
              return Container(
                alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height/2,
                  child: Text("This is Modal Bottom "),
              );
            } );
        },child: Text("Click"),),
      ),
    );
  }
}
