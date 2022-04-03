import 'package:flutter/material.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class Myfatch extends StatefulWidget {
  const Myfatch({Key? key}) : super(key: key);

  @override
  State<Myfatch> createState() => _MyfatchState();
}

class _MyfatchState extends State<Myfatch> {
  var userData;

  Future getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      var decode = convert.jsonDecode(response.body);
      userData = decode;
      print(userData);
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    this.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  itemCount: userData == null ? 0 : userData.length,
                  itemBuilder: (_, index) {
                    return Card(
                      child: ListTile(
                        title: Text(userData[index]["title"].toString()),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
