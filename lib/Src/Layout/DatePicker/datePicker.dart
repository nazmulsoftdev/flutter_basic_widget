import 'package:flutter/material.dart';

class MyDate extends StatefulWidget {
  const MyDate({Key? key}) : super(key: key);

  @override
  State<MyDate> createState() => _MyDateState();
}

class _MyDateState extends State<MyDate> {
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime(DateTime.now().year),
        firstDate: DateTime(DateTime.now().year - 20),
        lastDate: DateTime(DateTime.now().year + 3));

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _selectDate(context);
              },
              child: Text("Pic Date"),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Date: " +
                selectedDate.year.toString() +
                "-" +
                selectedDate.month.toString() +
                "-" +
                selectedDate.day.toString())
          ],
        ),
      )),
    );
  }
}
