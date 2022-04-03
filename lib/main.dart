
import 'package:app6/Src/Layout/Check_Internet/myNet.dart';
import 'package:app6/Src/Layout/Localization/Languages/languages.dart';

import 'package:app6/Src/Layout/RoutePages/routePage4.dart';
import 'package:app6/Src/Layout/RoutePages/routePage5.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      translations: Languages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),

      // define route path here
      initialRoute: "/",
      routes: {
        '/fourRoutePage': (context) => routePage4(),
        '/fifthRoutePage': (context) => routePage5()
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:Myinternet(),
    );
  }
}
