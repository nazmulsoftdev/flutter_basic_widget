import 'package:flutter/material.dart';

class Myswitch extends StatefulWidget {
  const Myswitch({Key? key}) : super(key: key);

  @override
  State<Myswitch> createState() => _MyswitchState();
}

class _MyswitchState extends State<Myswitch> {
  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(

          height: 300,
          width: 500,
          child: Card(
            color: Color(isSwitched ? 0xff22a6b3 : 0xff2f3542),
            elevation: 5,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Switch(
                    activeColor: Colors.green,
                    inactiveTrackColor: Colors.redAccent,
                    value: isSwitched, onChanged: toggleSwitch),
                Text(textValue,style: TextStyle(color:Colors.white),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
