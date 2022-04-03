import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OutputLanguage extends StatefulWidget {
  const OutputLanguage({Key? key}) : super(key: key);

  @override
  State<OutputLanguage> createState() => _OutputLanguageState();
}

class _OutputLanguageState extends State<OutputLanguage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text("app_name".tr),
              Text("app_title".tr),
              SizedBox(
                height: 50,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(onPressed: () {
                      Get.updateLocale(Locale('en', 'US'));
                    }, child: Text("English")),
                    ElevatedButton(onPressed: () {
                      Get.updateLocale(Locale('bn', 'BD'));
                    }, child: Text("Bangla")),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
