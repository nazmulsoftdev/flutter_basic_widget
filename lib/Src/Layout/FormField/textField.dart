import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class textField extends StatefulWidget {
  const textField({Key? key}) : super(key: key);

  @override
  State<textField> createState() => _formState();
}

class _formState extends State<textField> {


  //password show and hide
  bool showPass = false;

  // social link

  String facebookIcon = "assets/images/facebookIcon.png";
  String googleIcon = "assets/images/googleIcon.png";



  //

  TextEditingController _editingController = TextEditingController();

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
                alignment: Alignment.center,
                child: Lottie.network(
                    "https://assets1.lottiefiles.com/packages/lf20_bsirbz4y.json",
                    width: 200,
                    height: 200),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Name",
                      label: Text("Enter your Name"),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: Colors.blueAccent,
                      )),
                  controller: _editingController,
                  onChanged: (val){
                    print(val);
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Email",
                      label: Text("Enter your email"),
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.blueAccent,
                      )),
                  controller: _editingController,
                  onChanged: (val){
                      print(val);
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Card(
                elevation: 5,
                child: TextField(
                  obscureText: showPass ? false : true,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Password",
                      label: Text("Enter your password"),
                      prefixIcon: Icon(
                        Icons.add_moderator,
                        color: Colors.blueAccent,
                      ),
                      suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              showPass = !showPass;
                            });
                          },
                          child: Icon(
                            showPass
                                ? Icons.remove_red_eye_outlined
                                : Icons.remove_red_eye,
                            color: Colors.blueGrey,
                          ))),
                  controller: _editingController,
                  onChanged: (val){
                    print(val);
                  },
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child:
                      ElevatedButton(onPressed: () {
                        print(_editingController.text);
                      }, child: Text("Submit"))),
              Container(
                width: 500,
                alignment: Alignment.center,
                margin: EdgeInsets.only(top: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        googleIcon.toString(),
                        width: 40,
                        height: 40,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        facebookIcon.toString(),
                        width: 40,
                        height: 40,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )),
      ),
    );
  }
}
