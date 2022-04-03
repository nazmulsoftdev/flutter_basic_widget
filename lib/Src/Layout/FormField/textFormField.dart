import 'package:app6/Src/Layout/FormField/blankPage.dart';
import 'package:flutter/material.dart';

class textFormField extends StatefulWidget {
  const textFormField({Key? key}) : super(key: key);

  @override
  State<textFormField> createState() => _realFormState();
}

class _realFormState extends State<textFormField> {
  // create a global key for Form TextFormField

  final _formKey = GlobalKey<FormState>();

  // show and hide password method
  bool showPass = false;
  void watchPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.always,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Card(
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_circle,
                          color: Colors.green,
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: InputBorder.none,
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Fill this option";
                        } else if (val.length >= 13) {
                          return "length can't be more than 12";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.call,
                          color: Colors.green,
                        ),
                        hintText: "Phone",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: InputBorder.none,
                      ),
                      validator: (val){
                        if(val!.isEmpty){
                          return "Fill this option";
                        }else if(val.length>=12){
                          return "length can't be more than 12";
                        }else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.green,
                        ),
                        hintText: "Email",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: InputBorder.none,
                      ),
                      validator: (val){
                        if(val!.isEmpty){
                          return "Fill this option";
                        }else if(val.length >=20){
                          return "length can't be more than 20";
                        }else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: showPass ? false : true,
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.lock_outline,
                          color: Colors.green,
                        ),
                        suffixIcon: GestureDetector(
                            onTap: () {
                              watchPassword();
                            },
                            child: Icon(
                              showPass
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.remove_red_eye,
                              color: Colors.blueGrey,
                            )),
                        hintText: "Password",
                        hintStyle: TextStyle(color: Colors.blueGrey),
                        border: InputBorder.none,
                      ),
                      validator: (val){
                        if(val!.isEmpty){
                          return "Fill this option";
                        }else if(val.length >=7){
                          return "length can't be more than 7";
                        }else {
                          return null;
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: ElevatedButton(
                        onPressed: () {
                          if(_formKey.currentState!.validate()){
                            Navigator.push(context, MaterialPageRoute(builder: (_)=>blankPage()),);
                          }
                        },
                        child: Text("Submit"),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
