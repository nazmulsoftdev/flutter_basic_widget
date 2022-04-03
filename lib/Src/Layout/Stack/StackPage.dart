import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                left: 60,
                top: -30,
                child: Image.asset("assets/images/gitimage.png"),
                width: 70,
                height: 70,
              ),
              Positioned(
                  left: 50,
                  top: 90,
                  child: Text("Stack Widget",style: TextStyle(color: Colors.white,fontSize: 18),)),
              Positioned(
                  top: 150,
                  left: 3,
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton( onPressed:(){}, child: Icon(Icons.add_call,size: 20,color: Colors.green,),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffdff9fb))),),
                  ElevatedButton( onPressed:(){}, child: Icon(Icons.messenger,size: 20,color: Colors.green,),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffdff9fb))),),
                  ElevatedButton( onPressed:(){}, child: Icon(Icons.perm_contact_cal,size: 20,color: Colors.green,),style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffdff9fb))),),

                ],))
            ],
          ),
          decoration: BoxDecoration(color: Color(0xff222f3e),borderRadius: BorderRadius.circular(6)),
        ),
      ),
    );
  }
}
