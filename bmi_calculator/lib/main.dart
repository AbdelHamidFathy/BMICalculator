import 'package:bmi_calculator/result_Screen.dart';
import 'package:bmi_calculator/splash_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'home_Screen.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
 /* SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.light,
  ));*/
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
                appBarTheme: AppBarTheme(
                  // Brightness.dark will show white color icon
                  brightness: Brightness.dark,
                ),
              ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

